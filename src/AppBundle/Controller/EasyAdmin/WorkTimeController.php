<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 14.02.2018
 * Time: 16:14
 */

namespace AppBundle\Controller\EasyAdmin;


use AppBundle\Service\CsvExporter;

class WorkTimeController extends AdminController
{
    private $csvExporter;

    public function __construct(CsvExporter $csvExporter)
    {
        $this->csvExporter = $csvExporter;
    }

    public function createWorkTimeSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
//        dump($this->request->query);die;
        $filterRequest = $this->request->query->get("work_time_admin_filter");
        $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection );

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

        if ($this->request->query->has('reportButton')) {
            $queryBuilder
                ->leftJoin("entity.status", "status")
                ->andWhere("status.isWorking = :test")
                ->setParameter("test", 1)
            ;
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
        $queryBuilder = $this->createWorkTimeSearchQueryBuilder($this->entity['class'], '', $this->entity['search']['fields'], 'start', 'ASC');
        return $this->csvExporter->getWorkTimeRaport($queryBuilder);
    }
}