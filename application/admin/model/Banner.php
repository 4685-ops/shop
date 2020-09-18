<?php


namespace app\admin\model;


use think\Model;

class Banner extends BaseModel
{
    protected $autoWriteTimestamp = true;
    // 定义时间戳字段名
    protected $createTime = 'create_time';
    protected $updateTime = 'update_time';

    public static function addBanner($data = array())
    {
        return self::insert($data);
    }

    public static function updateBanner($data = array(), $id)
    {
        return self::update($data, array('id' => $id));
    }

    public static function getBannerInfoById($id)
    {
        $data = self::where("id", "=", $id)->find();
        if (!empty($data)) {
            return $data->toArray();
        }

        return null;

    }

    public static function getBannerInfoByName($name)
    {
        $data = self::where("name", "=", $name)->find();
        if (!empty($data)) {
            return $data->toArray();
        }

        return null;
    }

    public static function getBannerList($where, $config)
    {
        return self::where($where)->paginate(5, false, $config);
    }



}