<?php


namespace app\lib\exception;


class Product extends BaseException
{
    public $code = 400;
    public $msg = '没有商品';
    public $errorCode = 20000;
}