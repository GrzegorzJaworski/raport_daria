<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 14.02.2018
 * Time: 16:16
 */

namespace AppBundle\Controller\EasyAdmin;


class RaportController extends AdminController
{
    public function createSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
        if ($this->request->query->get("dateFor") || $this->request->query->get("dateUntil")) {
            if ($this->request->query->get('query') === true) {
                $searchQuery = '';
                $this->request->query->set('query',$searchQuery);
            }
            $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection);
            if ($this->request->query->get("dateFor")){
                $queryBuilder
                    ->andWhere('entity.date >= :dateFor')
                    ->setParameter('dateFor', $this->request->query->get("dateFor")." 00:00:00")
                ;
            }

            if ($this->request->query->get("dateUntil")) {
                $queryBuilder
                    ->andWhere('entity.date <= :dateUntil')
                    ->setParameter('dateUntil', $this->request->query->get("dateUntil")." 23:59:59")
                ;
            }
            return $queryBuilder;
        } else {
            return parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection, $dqlFilter);
        }
    }
}