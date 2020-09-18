<?php


namespace app\api\controller\v1;


use app\api\model\Banner as BannerModel;
use app\api\validate\IDMustBePositiveInt;
use app\lib\exception\MissException;

class Banner
{
    public function getBanner($id)
    {

        (new IDMustBePositiveInt())->goCheck();
        $banner = bannerModel::getBannerInfoById($id);

        if (!$banner ) {
            throw new MissException([
                'msg' => '请求banner不存在',
                'errorCode' => 40000
            ]);
        }
        return $banner;
    }
}