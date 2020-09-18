<?php


namespace app\api\controller\v1;


use app\api\model\Product as ProductModel;
use app\api\validate\Count;
use app\api\validate\IDMustBePositiveInt;
use Predis\Protocol\ProtocolException;
use think\Controller;

class Product extends Controller
{
    public function getRecent($count = 15)
    {
        (new Count())->goCheck();

        $products = ProductModel::getMostRecent($count);

        if ($products->isEmpty()) {
            throw new ProtocolException();
        }

        $products->hidden(["summary"]);

        return $products;
    }

    public function getOne($id = "")
    {
        (new IDMustBePositiveInt())->goCheck();

        $productInfo = ProductModel::getProductDetail($id);

        return $productInfo;
    }
}