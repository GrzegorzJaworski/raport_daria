<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 14.02.2018
 * Time: 16:14
 */

namespace AppBundle\Controller\EasyAdmin;


class WorkTimeController extends AdminController
{

    public function createWorkTimeSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
        $filterRequest = $this->request->query->get("work_time_admin_filter");

        $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields);

        foreach ($filterRequest as $key => $value) {
            if ($value !=='' && $key != "_token") {
                if ($key == 'start') {
                    $queryBuilder
                        ->andWhere("entity.$key >= :$key")
                        ->setParameter($key, $value." 00:00:00")
                    ;
                } elseif ($key == 'end') {
                    $queryBuilder
                        ->andWhere("entity.$key <= :$key")
                        ->setParameter($key, $value." 23:59:59")
                    ;
                } else {
                    $queryBuilder
                        ->andWhere("entity.$key = :$key")
                        ->setParameter($key, $value)
                    ;
                }
            }
        }

        if ($filterRequest['message'] !== '') {
            $this->request->query->set('query',$filterRequest['message']);
        } else {
            $this->request->query->set('query','');
        }

        return $queryBuilder;
    }

    public function raportAction()
    {
        throw new \RuntimeException('Action for exporting an entity not defined');
    }
}