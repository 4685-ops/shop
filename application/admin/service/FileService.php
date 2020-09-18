<?php


namespace app\admin\service;


use app\admin\model\Image;

class FileService
{
    public static function upload($file)
    {
        if ($file) {
            // 移动到框架应用根目录/public/uploads/ 目录下

            $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
            if ($info) {
                $url = $info->getSaveName();
                return Image::addImage(['url' => $url, 'from' => 1, 'update_time' => time()]);
            } else {
                return 0;
            }
        } else {
            return 0;
        }
    }
}