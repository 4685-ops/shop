<?php


namespace app\admin\service;


use app\admin\model\Banner;
use app\admin\model\BannerItem;
use app\lib\exception\ParamsException;

class BannerService
{

    public static function addBanner($data = array())
    {
        //检查主题名称是否重复
        $info = Banner::getBannerInfoByName($data['name']);

        if ($info) {
            //已经存在了
            throw new ParamsException([
                'msg' => '当前添加的banner名称已经存在了~'
            ]);
        }

        return Banner::addBanner($data);
    }

    public static function updateBanner($data = array())
    {
        $id = $data['id'];
        //检查主题名称是否重复
        $info = Banner::getBannerInfoByName($data['name']);

        if ($info && $info['id'] != $id) {
            //已经存在了
            throw new ParamsException([
                'msg' => '当前添加的banner名称已经存在了~'
            ]);
        }

        unset($data['id']);
        return Banner::updateBanner($data, $id);
    }

    public static function getBannerInfoById($id)
    {
        return Banner::getBannerInfoById($id);
    }

    public static function getBannerList($params)
    {
        $where = array();
        $config = array();
        if (!empty($params)){
            foreach ($params as $key=>$val){
                if ($key=='page'){
                    continue;
                }
                $val = trim($val);
                $where[$key] = array('like', "%{$val}%");

                $config['query'] = [
                    $key=>$val
                ];
            }
        }


        $currentPage = (!isset($params['page']) || empty($params['page'])) ? 1 : $params['page'];
        $config['page']  =$currentPage;

        return Banner::getBannerList($where, $config);
    }

    public static function getBannerItemList($params){
        $where = array();
        $config = array();

        if (!empty($params)){
            foreach ($params as $key=>$val){
                if ($key=='page'||$key == 'banner_id'){
                    continue;
                }
                $val = trim($val);
                $where[$key] = array('like', "%{$val}%");

                $config['query'] = [
                    $key=>$val
                ];
            }
        }


        $currentPage = (!isset($params['page']) || empty($params['page'])) ? 1 : $params['page'];
        $config['page']  =$currentPage;

        return BannerItem::getBannerItemList($where, $config);
    }
}