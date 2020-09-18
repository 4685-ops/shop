<?php


namespace app\lib\exception;


class SuccessException extends BaseException
{
    public $code = 200;
    public $msg = "success";
    public $errorCode = "200";
}