<?php


namespace app\admin\model;




class BannerItem extends BaseModel
{
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