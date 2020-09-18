<?php


namespace app\admin\validate;


class BannerValidate extends BaseValidate
{
    protected $rule = [
        'name' => 'require',
        'description' => 'require',
    ];

    protected $message = [
        'name' => 'Banner名称不能为空',
        'description' => 'Banner描述不能为空',
    ];
}