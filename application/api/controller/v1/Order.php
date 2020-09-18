<?php


namespace app\api\controller\v1;


use app\api\controller\BaseController;
use app\api\service\OrderService;
use app\api\service\Token as TokenService;
use app\api\validate\OrderValidate;

class Order extends BaseController
{
    protected $beforeActionList = [
        'second' => ['only' => 'placeOrder'],
    ];

    public function placeOrder()
    {
        (new OrderValidate())->goCheck();

        $products = input("post.products/a");
        $uid = TokenService::getCurrentUid();

        $orderService = new OrderService();
        $status = $orderService->place($products, $uid);
        return $status;
    }
}