<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 11.02.2018
 * Time: 13:41
 */

namespace AppBundle\Twig;


class EasyAdminExtension extends \Twig_Extension
{

    public function getFilters()
    {
        return [
            new \Twig_SimpleFilter(
                'filter_admin_actions',
                [$this, 'filterActions']
            )
        ];
    }

    public function filterActions(array $itemActions)
    {
        unset($itemActions['searchData']);

        return $itemActions;
    }
}