<?php


namespace app\api\controller\v1;


use app\api\model\Theme as ThemeModel;
use app\api\validate\IDCollection;
use think\Controller;

class Theme extends Controller
{
    public function getThemes($ids)
    {
        (new IDCollection())->goCheck();

        $ids = explode(',', $ids);
        $theme = ThemeModel::with('topicImg,headImg')->select($ids);

        if ($theme->isEmpty()) {
            throw new ThemeException();
        }

        return $theme;
    }


}