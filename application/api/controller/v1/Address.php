<?php


namespace app\api\controller\v1;


use app\api\controller\BaseController;
use app\api\model\User;
use app\api\service\Token as TokenService;
use app\api\validate\AddressNew;
use app\lib\exception\SuccessMessage;
use app\lib\exception\UserException;
use think\Controller;

class Address extends BaseController
{

    public function createOrUpdateAddress()
    {
        $validate = new AddressNew();
        $validate->goCheck();
        $uid = TokenService::getCurrentUid();

        $user = User::get($uid);

        if (!$user) {
            throw new UserException([
                'code' => 404,
                'msg' => '用户收获地址不存在',
                'errorCode' => 60001
            ]);
        }

        $userAddress = $user->address;

        $data = $validate->getDataByRule(input("post."));

        if (!$userAddress) {
            //add
            $user->address()->save($data);
        } else {
            //update
            $user->address->save($data);
        }

        return json(new SuccessMessage(),201);

    }


}