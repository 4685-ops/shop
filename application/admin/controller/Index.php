<?php


namespace app\admin\controller;


use think\Session;
use think\Url;

class Index
{
    public function index(){
        $pageParams = [
            'breadCrumbsFirst' => '首页',
            'breadCrumbsFirstUrl' => Url::build('/admin/index'),
            'breadCrumbsTwo' => '首页 ',
            'nav' => 1,
            'navTwo' => 0,
        ];
        return view('index',$pageParams);
    }
}