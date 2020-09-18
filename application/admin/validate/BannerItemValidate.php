<?php


namespace app\admin\validate;


class BannerItemValidate extends BaseValidate
{
    //array(5) {
    //["banner_id"] => string(1) "1"
    //["name"] => string(8) "xiaoy111"
    //["description"] => string(15) "首页轮播图"
    //["type"] => string(1) "1"
    //["key_word"] => string(3) "333"
    //}

    protected $rule = [
        'banner_id' => 'require',
        'name' => 'require',
        'type' => 'require|checkKeyWord',
    ];

    protected $message = [
        'banner_id' => 'banner_id不能为空',
        'name' => '标题不能为空',
        'type' => '跳转类型不能为空',
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
    protected function checkKeyWord($value, $rule = '', $data = '', $field = '')
    {
        if ($value > 0) {
            if (empty($data['key_word'])) {
                return '导向关联不能为空';
            }
        };

        return true;
    }
}