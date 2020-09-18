<?php


namespace app\api\model;


class Banner extends BaseModel
{
    protected $hidden = [ 'delete_time','update_time','create_time'];
    public function items()
    {
        return $this->hasMany('BannerItem', 'banner_id', 'id');
    }

    public static function getBannerInfoById($id)
    {
        $data = self::with(['items','items.img'])->find($id);

        return $data;

    }

    public static function getBannerInfoByName($name)
    {
        $data = self::where("name", "=", $name)->find();

        return $data;
    }


}