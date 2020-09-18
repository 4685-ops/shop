<?php


namespace app\admin\model;


use think\Model;

class AdminUserModel extends Model
{

    protected $table = "shop_admin_user";

    public static function getUserByUserName($userName)
    {
        return self::where("username", "=", $userName)->find()->toArray();
    }

    public static function updateAdminLoginInfo($uid, $data)
    {
        return self::update($data, array('uid' => $uid));
    }
}