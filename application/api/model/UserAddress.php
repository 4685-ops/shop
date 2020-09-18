<?php


namespace app\api\model;


class UserAddress extends BaseModel
{
    protected $autoWriteTimestamp = true;
    protected $createTime = 'update_time';

    protected $hidden =['id', 'delete_time', 'user_id'];
}