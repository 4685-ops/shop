<?php


namespace app\api\service;


use app\api\model\User;
use app\lib\enum\ScopeEnum;
use app\lib\exception\TokenException;
use app\lib\exception\WeChatException;
use think\Exception;

class UserToken extends Token
{

    protected $code;
    protected $wxLoginUrl;
    protected $wxAppID;
    protected $wxAppSecret;

    public function __construct($code)
    {
        $this->code = $code;
        $this->wxAppID = config("wx.app_id");
        $this->wxAppSecret = config("wx.app_secret");

        $this->wxLoginUrl = sprintf(config("wx.login_url"), $this->wxAppID, $this->wxAppSecret, $this->code);
    }

    public function get()
    {
        $wxResult = (new CurlService())->asJson(true)->get($this->wxLoginUrl)
            ->setHeader('Content-Type', ' application/json')
            ->response;


        if (empty($wxResult)) {
            throw new Exception('获取session_key及openID时异常，微信内部错误');
        } else {
            // 建议用明确的变量来表示是否成功
            // 微信服务器并不会将错误标记为400，无论成功还是失败都标记成200
            // 这样非常不好判断，只能使用errcode是否存在来判断
            $loginFail = array_key_exists("errcode", $wxResult);
            if ($loginFail) {
                //存在报错
                $this->processLoginError($wxResult);
            } else {
                //生成令牌
                return $this->grantToken($wxResult);
            }
        }

    }

    // 颁发令牌
    // 只要调用登陆就颁发新令牌
    // 但旧的令牌依然可以使用
    // 所以通常令牌的有效时间比较短
    // 目前微信的express_in时间是7200秒
    // 在不设置刷新令牌（refresh_token）的情况下
    // 只能延迟自有token的过期时间超过7200秒（目前还无法确定，在express_in时间到期后
    // 还能否进行微信支付
    // 没有刷新令牌会有一个问题，就是用户的操作有可能会被突然中断
    public function grantToken($wxResult)
    {
        // 此处生成令牌使用的是TP5自带的令牌
        // 如果想要更加安全可以考虑自己生成更复杂的令牌
        // 比如使用JWT并加入盐，如果不加入盐有一定的几率伪造令牌
        $openid = $wxResult['openid'];

        $user = User::getByOpenID($openid);

        if ($user) {
            $uid = $user->id;
        } else {
            $uid = $this->newUser($openid);
        }

        //准备要缓存的数组
        $cachedValue = $this->prepareCachedValue($wxResult, $uid);
        //生成token
        $token = $this->saveToCache($cachedValue);
        return $token;
    }

    // 写入缓存
    private function saveToCache($wxResult)
    {
        $key = self::generateToken();

        $value = json_encode($wxResult);

        $expire_in = config('setting.token_expire_in');

        //可以写到redis中
        $result = cache($key, $value, $expire_in);

        if (!$result) {
            throw new TokenException([
                'msg' => '服务器缓存异常',
                'errorCode' => 10005
            ]);
        }

        return $key;
    }

    private function prepareCachedValue($wxResult, $uid)
    {
        $cachedValue = $wxResult;
        $cachedValue['uid'] = $uid;
        $cachedValue['scope'] = ScopeEnum::User;
        return $cachedValue;
    }

    protected function newUser($openid)
    {

        $user = User::create([
            'openid' => $openid
        ]);

        return $user->id;

    }

    public function processLoginError($wxResult)
    {

        throw  new WeChatException([
            'msg' => $wxResult['errmsg'],
            'errorCode' => $wxResult['errcode']
        ]);

    }
}