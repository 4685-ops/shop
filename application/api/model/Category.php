<?php


namespace app\api\model;


class Category extends BaseModel
{
    protected $hidden = ["delete_time", "description", "update_time"];


    public function products()
    {
        return $this->hasMany("Product", "category_id", "id");
    }

    public function img()
    {
        return $this->belongsTo("Image", "topic_img_id", "id");
    }

    public static function getCategory($id)
    {
        return self::with("products")
            ->find($id);
    }
}