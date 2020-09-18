<?php


namespace app\admin\controller;


use app\admin\model\BannerItem;
use app\admin\service\BannerService;
use app\admin\service\FileService;
use app\admin\validate\BannerItemValidate;
use app\admin\validate\BannerValidate;
use app\lib\exception\ParamsException;
use think\Controller;
use think\Request;
use think\Url;

class Banner extends Controller
{
    public function bannerList()
    {

        $pageParams = [
            'breadCrumbsFirst' => 'Banner广告位列表',
            'breadCrumbsFirstUrl' => Url::build('/banner/bannerList'),
            'breadCrumbsTwo' => 'Banner广告位列表 ',
            'nav' => 2,
            'navTwo' => 21,
        ];
        $bannerList = BannerService::getBannerList(Request::instance()->param());
        if (!empty($bannerList)) {
            $this->assign([
                'list' => $bannerList->toArray(),
                'page' => $bannerList->render(),
                'searchName' => Request::instance()->param('name')
            ]);
        }


        return view('index', $pageParams);
    }

    public function addBanner()
    {
        $pageParams = [
            'breadCrumbsFirst' => 'Banner广告位列表',
            'breadCrumbsFirstUrl' => Url::build('/banner/bannerList'),
            'breadCrumbsTwo' => '添加广告位 ',
            'nav' => 2,
            'navTwo' => 21,
        ];

        return view('add', $pageParams);
    }

    public function doAddBanner()
    {
        (new BannerValidate())->goCheck();

        $flag = BannerService::addBanner(Request::instance()->param());

        if ($flag) {
            //跳到首页
            return json([
                'url' => '/banner/bannerList?page=1',
            ]);
        } else {
            throw new ParamsException([
                'msg' => '未知错误，添加失败'
            ]);
        }
    }

    public function doEditBanner()
    {
        (new BannerValidate())->goCheck();

        $flag = BannerService::updateBanner(Request::instance()->param());

        if ($flag) {
            //跳到首页
            return json([
                'url' => '/banner/bannerList?page=1',
            ]);
        } else {
            throw new ParamsException([
                'msg' => '未知错误，添加失败'
            ]);
        }
    }

    public function editBanner()
    {
        $pageParams = [
            'breadCrumbsFirst' => 'Banner广告位列表',
            'breadCrumbsFirstUrl' => Url::build('/banner/bannerList'),
            'breadCrumbsTwo' => '编辑广告位 ',
            'nav' => 2,
            'navTwo' => 21,
        ];

        $bannerInfo = BannerService::getBannerInfoById(Request::instance()->param('id'));

        $this->assign([
            'bannerInfo' => $bannerInfo
        ]);

        return view('edit', $pageParams);
    }

    public function setBannerList()
    {

        $bannerInfo = BannerService::getBannerInfoById(Request::instance()->param('id'));
        $pageParams = [
            'breadCrumbsFirst' => 'Banner广告位列表',
            'breadCrumbsFirstUrl' => Url::build('/banner/bannerList'),
            'breadCrumbsTwo' => '设置 <b style="color: red">' . $bannerInfo['name'] . '</b> Banner广告位内容 ',
            'nav' => 2,
            'navTwo' => 21,
        ];

        //获取数据
        $bannerItemList = BannerService::getBannerItemList(Request::instance()->param());

        if (!empty($bannerItemList)) {
            $this->assign([
                'list' => $bannerItemList->toArray(),
                'page' => $bannerItemList->render(),
                'searchName' => Request::instance()->param('name')
            ]);
        }

        $this->assign([
            'bannerInfo' => $bannerInfo,
        ]);
        return view('setBannerList', $pageParams);
    }

    public function addSetBannerList()
    {
        $bannerInfo = BannerService::getBannerInfoById(Request::instance()->param('id'));
        $pageParams = [
            'breadCrumbsFirst' => 'Banner广告位列表',
            'breadCrumbsFirstUrl' => Url::build('/banner/bannerList'),
            'breadCrumbsTwo' => '添加 <b style="color: red">' . $bannerInfo['name'] . '</b> Banner广告位内容 ',
            'nav' => 2,
            'navTwo' => 21,
        ];

        $this->assign([
            'bannerInfo' => $bannerInfo,
        ]);
        return view('addSetBannerList', $pageParams);
    }

    public function doAddSetBannerList()
    {
        (new BannerItemValidate())->goCheck();

        $params = request()->param();

        $params['img_id'] = FileService::upload(request()->file('image'));

        $id = BannerItem::addBannerItem($params);

        if ($id > 0) {
            //添加成功
            $this->redirect('/banner/setBannerList', ['id' => $params['banner_id']]);
        } else {
            $this->redirect('/banner/setBannerList', ['id' => $params['banner_id']]);
        }
    }
}