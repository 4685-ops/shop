<?php


namespace app\api\model;


class Product extends BaseModel
{
    protected $hidden = [
        'delete_time', 'main_img_id', 'pivot', 'from', 'category_id',
        'create_time', 'update_time'];

    public function imgs()
    {
        return $this->hasMany('ProductImage', 'product_id', 'id');
    }


    public function properties()
    {
        return $this->hasMany("ProductProperty", "product_id", "id");
    }

    public function getMainImgUrlAttr($value, $data)
    {
        return $this->prefixImgUrl($value, $data);
    }

    public static function getMostRecent($count)
    {

        return self::limit($count)->order("create_time desc")->select();
    }

    public static function getProductDetail($id)
    {
        // 获取单个商品
        // 获取单个商品的所有图片 就去关联 product_image 想要获取具体的图片地址 那么就需要再去关联Image表
        // 获取单个商品的所有属性product_property
        return self::with(["imgs" => function ($query) {
            $query->with(["imgUrl"])->order("order", "asc");
        }])->with("properties")->find($id);

    }

}