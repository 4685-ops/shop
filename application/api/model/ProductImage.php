<?php


namespace app\api\model;


class ProductImage extends BaseModel
{
    protected $hidden = ["delete_time"];

    public function imgUrl()
    {
        return $this->belongsTo("Image", "img_id", "id");
    }
}