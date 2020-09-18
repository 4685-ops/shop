<?php


namespace app\api\service;


use app\api\model\Product;
use app\lib\exception\OrderException;

class OrderService
{

    protected $products; //根据用户传过来的数据获取商品id去数据库查询得来的数组
    protected $uid; //用户id
    protected $oProducts;//用户传过来的商品数组 订单商品列表

    public function __construct()
    {

    }

    public function place($oProducts, $uid)
    {
        $this->oProducts = $oProducts;
        $this->uid = $uid;
        $this->products = $this->getProductsByOrder($oProducts);

        $status = $this->getOrderStatus();


    }

    private function getOrderStatus()
    {
        $status = [
            'pass' => true, //判断是否有库存 这个地方是判断所有的
            'orderPrice' => 0,//订单的总价格
            'pStatusArray' => []// 订单中每个商品的详情
        ];
        foreach ($this->oProducts as $oProduct) {
            $pStatus = $this->getProductStatus($oProduct['product_id'], $oProduct['count'], $this->products);
            
        }

    }

    protected function getProductStatus($oPID, $oCount, $products)
    {
        $pIndex = -1;
        //单个商品 的详情信息
        $pStatus = [
            'id' => null,
            'haveStock' => false,
            'count' => 0,
            'name' => '',
            'totalPrice' => 0
        ];

        for ($i = 0; $i < count($products); $i++) {
            if ($oPID == $products[$i]['id']) {
                $pIndex = $i;
            }
        }


        if ($pIndex == -1) {
            //这里面提交的商品id 在数据库没找到 当非法数据
            throw new OrderException([
                'msg' => 'id为' . $oPID . '的商品不存在，订单创建失败'
            ]);
        } else {

            $product = $products[$pIndex];

            $pStatus['id'] = $product['id'];
            $pStatus['name'] = $product['name'];
            $pStatus['count'] = $oCount;
            $pStatus['totalPrice'] = $product['price'] * $oCount;

            if ($product['stock'] - $oCount >= 0) {
                $pStatus['haveStock'] = true;
            }
        }
        return $pStatus;
    }


    protected function getProductsByOrder($oProducts)
    {
        $oPIDs = array();

        foreach ($oProducts as $key => $val) {
            array_push($oPIDs, $val['product_id']);
        }

        $products = Product::all($oPIDs)
            ->visible(['id', 'price', 'stock', 'name', 'main_img_url'])
            ->toArray();

        return $products;
    }
}