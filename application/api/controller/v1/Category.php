<?php


namespace app\api\controller\v1;

use app\api\model\Category as CategoryModel;
use app\api\validate\IDMustBePositiveInt;
use app\lib\exception\MissException;
use think\Controller;

class Category extends Controller
{


    public function getAllCategories()
    {

        $allCategory = CategoryModel::all([], "img");

        if ($allCategory->isEmpty()) {
            throw new MissException([
                'msg' => '还没有任何类目',
                'errorCode' => 50000
            ]);
        }

        return $allCategory;
    }

    public function getCategories($id)
    {
        (new IDMustBePositiveInt())->goCheck();

        $cateGoryData = CategoryModel::getCategory($id);

        if (empty($cateGoryData)) {
            throw new  MissException([
                'msg' => 'category not found'
            ]);
        }

        return $cateGoryData;
    }
}