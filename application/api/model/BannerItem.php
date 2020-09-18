<?php


namespace app\api\model;


class BannerItem extends BaseModel
{
    protected $hidden = ['id', 'img_id', 'banner_id', 'delete_time','update_time'];

    public function img()
    {
        return $this->belongsTo('Image', 'img_id', 'id');
    }


    public static function addBannerItem($data = array())
    {
        return self::insert($data);
    }

    public static function getBannerItemList(array $where, array $config)
    {
        return self::with('img')->where($where)->paginate(5, false, $config);
    }


}