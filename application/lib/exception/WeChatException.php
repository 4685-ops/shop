<?php


namespace app\lib\exception;


class WeChatException extends BaseException
{
    public $code = 400;
    public $msg = 'server unknown error';
    public $errorCode = 999;
}