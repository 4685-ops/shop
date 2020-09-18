<?php


namespace app\lib\exception;


class ParamsException extends BaseException
{
    public $code = 401;
    public $msg = "invalid parameters";
    public $errorCode = 10000;
}