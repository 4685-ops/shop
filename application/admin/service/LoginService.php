<?php


namespace app\admin\service;


use app\admin\model\AdminUserModel;
use app\lib\exception\ParamsException;
use think\Request;
use think\Session;

class LoginService
{

    public static function login($username, $password)
    {
        $userInfo = AdminUserModel::getUserByUserName($username);

        if (empty($userInfo)) {
            throw new ParamsException([
                'msg' => '用户名不正确'
            ]);
        }

        if ($userInfo['password'] != md5($password . $userInfo['salt'])) {
            throw new ParamsException([
                'msg' => '密码不正确'
            ]);
        }

        //修改登录信息
        $updateData = [
            'lastip' => $userInfo['nowip'],
            'nowip' => Request::instance()->ip(),
            'lasttime' => $userInfo['nowtime'],
            'nowtime' => time(),
            'logincount' => $userInfo['logincount'] + 1,
        ];

        $flag =  self::updateAdminLoginInfo($userInfo['uid'], $updateData);
        if (!$flag){
            throw new ParamsException([
                'msg' => '未知错误，登录失败'
            ]);
        }

        //用户信息写到session
        unset($userInfo['password']);
        Session::set("userInfo",json_encode($userInfo));

        return true;
    }

    public static function updateAdminLoginInfo($id, $data = array())
    {
       return  AdminUserModel::updateAdminLoginInfo($id, $data);
    }
}