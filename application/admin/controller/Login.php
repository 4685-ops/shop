<?php


namespace app\admin\controller;

use app\admin\service\LoginService;
use app\admin\validate\LoginValidate;
use think\captcha\Captcha;
use think\Controller;

class Login extends Controller
{
    /**
     * 登录
     */
    public function login()
    {
        return view('login');
    }

    /**
     * 登录接口
     */
    public function doLogin()
    {

        (new LoginValidate())->goCheck();
        //验证通过登录
        $flag = LoginService::login(request()->param('username'), request()->param('password'));

        if ($flag) {
            //跳到首页
            return json([
                'url' => '/admin/index',
            ]);
        }
    }

    /**
     * 获图形验证码
     */
    public function getVerifyCode()
    {
        $config = [
            // 验证码字体大小
            'fontSize' => 20,
            // 验证码位数
            'length' => 4,
            // 关闭验证码杂点
            'useNoise' => false,
        ];

        $captcha = new Captcha($config);

        return $captcha->entry();
    }


}