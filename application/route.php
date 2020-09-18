<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;

#接口
Route::get('api/:version/banner/:id', 'api/:version.Banner/getBanner');
Route::get('api/:version/theme', 'api/:version.Theme/getThemes');
Route::get('api/:version/theme/:id', 'api/:version.Theme/getComplexOne');


Route::get('api/:version/product/recent', 'api/:version.Product/getRecent');
Route::get('api/:version/product/:id', 'api/:version.Product/getOne', [], ['id' => '\d+']);


Route::get('api/:version/category/:id', 'api/:version.Category/getCategories', [], ['id' => '\d+',]);
Route::get('api/:version/category/all', 'api/:version.Category/getAllCategories');

Route::post('api/:version/token/user', 'api/:version.Token/getToken');

Route::post('api/:version/address', 'api/:version.Address/createOrUpdateAddress');


Route::post('api/:version/order', 'api/:version.Order/placeOrder');

#后台
Route::get('admin/login', "admin/login/login");
Route::post('admin/doLogin', "admin/login/doLogin");
Route::get('admin/getVerifyCode', "admin/login/getVerifyCode");


#后台banner管理
Route::get('banner/bannerList', "admin/banner/bannerList");
Route::get('banner/addBanner', "admin/banner/addBanner");
Route::post('banner/doAddBanner', "admin/banner/doAddBanner");
Route::get('banner/editBanner', "admin/banner/editBanner");
Route::post('banner/doEditBanner', "admin/banner/doEditBanner");
Route::get('banner/setBannerList', "admin/banner/setBannerList");

Route::get('banner/addSetBannerList', "admin/banner/addSetBannerList");
Route::post('banner/doAddSetBannerList', "admin/banner/doAddSetBannerList");
