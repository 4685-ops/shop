<?php


namespace app\api\validate;


class IDMustBePositiveInt extends BaseValidate
{

    protected $rule = [
        'id' => "require|isPositiveInteger"
    ];


    protected $message = [
        'message' => 'id必须是正整数'
    ];


}