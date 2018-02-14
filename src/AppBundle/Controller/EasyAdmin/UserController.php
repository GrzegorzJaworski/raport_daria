<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 14.02.2018
 * Time: 16:18
 */

namespace AppBundle\Controller\EasyAdmin;


class UserController extends AdminController
{
    public function createNewUserEntity()
    {
        return $this->get('fos_user.user_manager')->createUser();
    }

    public function prePersistUserEntity($user)
    {
        $this->get('fos_user.user_manager')->updateUser($user, false);
    }

    public function preUpdateUserEntity($user)
    {
        $this->get('fos_user.user_manager')->updateUser($user, false);
    }
}