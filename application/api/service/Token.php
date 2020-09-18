<?php


namespace app\api\service;


use app\lib\enum\ScopeEnum;
use app\lib\exception\ForbiddenException;
use app\lib\exception\TokenException;
use think\Cache;
use think\Exception;
use think\Request;

class Token
{
    public static function generateToken()
    {
        $randChar = getRandChar(32);
        $timestamp = $_SERVER['REQUEST_TIME_FLOAT'];
        $tokenSalt = config('secure.token_salt');
        return md5($randChar . $timestamp . $tokenSalt);
    }

    public static function getCurrentTokenVar($key)
    {

        //获取token
        $token = Request::instance()->header('token');
        $vars = Cache::get($token);

        if (empty($vars)) {
            throw new TokenException();
        } else {
            //判断是不是数组
            if (!is_array($vars)) {
                $vars = json_decode($vars, true);
            }

            if (array_key_exists($key, $vars)) {
                return $vars[$key];
            } else {
                throw new Exception('尝试获取的Token变量并不存在');
            }
        }

    }

    public static function getCurrentUid()
    {
        $uid = self::getCurrentTokenVar('uid');

        return $uid;
    }


    public static function needPrimaryScope()
    {
        $scope = self::getCurrentTokenVar('scope');

        if ($scope) {
            if ($scope >= ScopeEnum::User) {
                return true;
            } else {
                throw new ForbiddenException();
            }
        } else {
            //token不存在
            throw new TokenException();
        }
    }

    public static function  needExclusiveScope()
    {
        $scope = self::getCurrentTokenVar('scope');

        if ($scope) {
            if ($scope == ScopeEnum::User) {
                return true;
            } else {
                throw new ForbiddenException();
            }
        } else {
            //token不存在
            throw new TokenException();
        }
    }
}