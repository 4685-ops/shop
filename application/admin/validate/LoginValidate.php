<?php


namespace app\admin\validate;


class LoginValidate extends BaseValidate
{
    protected $rule = [
        'username' => 'require',
        'password' => 'require',
        'verifyCode' => 'require|checkVerifyCode'
    ];


    protected $message = [
        'username' => '用户名不能为空',
        'password' => '密码不能为空',
        'verifyCode' => '图形验证码不能为空'
    ];


    /**
     * @function 检查图形验证码是否正确
     *
     * @param $value    值
     * @param string $rule
     * @param string $data 接收的所有参数数组
     * @param string $field 字段 verifyCode
     * @return bool|string
     */
    protected function checkVerifyCode($value, $rule = '', $data = '', $field = '')
    {
        if (!captcha_check($value)) {
            //验证码不正确
            return '验证码不正确';
        };

        return true;
    }

}
