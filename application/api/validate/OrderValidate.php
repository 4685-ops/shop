<?php


namespace app\api\validate;


use app\lib\exception\ParamsException;

class OrderValidate extends BaseValidate
{

    protected $rule = [
        "products" => "checkProducts"
    ];

    protected $singleRule = [
        'product_id' => 'require|isPositiveInteger',
        'count' => 'require|isPositiveInteger',
    ];

    protected function checkProducts($values)
    {
        if (empty($values)) {
            //抛出去一个异常 当时是 传递过来的数据中 没有 products参数

            throw new ParamsException([
                'msg' => '商品列表不能为空'
            ]);

        } else {
            //$values是数组 再去验证里面的参数

            foreach ($values as $value) {
                $this->checkProduct($value);
            }
        }
    }

    protected function checkProduct($value)
    {
        $validate = new BaseValidate($this->singleRule);
        $result = $validate->check($value);
        if ($result) {
            throw new ParameterException([
                'msg' => '商品列表参数错误',
            ]);
        }
        return true;
    }


}