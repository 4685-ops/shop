<?php


namespace app\api\controller\v1;


use app\api\service\UserToken;
use app\api\validate\TokenGet;
use think\Controller;

class Token extends Controller
{
    public function getToken($code = "")
    {
        //检查code参数
        (new TokenGet())->goCheck();
        //调用service获取token

        $ut = new UserToken($code);

        $token = $ut->get();

        return json([
            'token' => $token
        ]);
    }
}