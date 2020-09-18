<?php


namespace app\admin\model;


class Image extends BaseModel
{
    protected $hidden = ["delete_time","update_time"];

    public function getUrlAttr($value,$data){
        return  $this->prefixImgUrl($value,$data);
    }
}