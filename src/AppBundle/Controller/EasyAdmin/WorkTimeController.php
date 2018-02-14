<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 14.02.2018
 * Time: 16:14
 */

namespace AppBundle\Controller\EasyAdmin;


use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\QueryBuilder;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\StreamedResponse;

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

        if ($this->request->query->has('reportButton')){
           echo $this->getWorkTimeRaportAction($queryBuilder);
           die();
        } else{
            return $queryBuilder;
        }
    }

    public function getWorkTimeRaportAction(QueryBuilder $queryBuilder)
    {
        $entities = new ArrayCollection($queryBuilder->getQuery()->getResult());
        $response = new StreamedResponse();

        $response->setCallback(function () use ($entities){
            $handle = fopen('php://output', 'w+');
            fputcsv($handle, ['test']);
            fclose($handle);
        });
        $response->headers->set('Content-Type', 'text/csv; charset=utf-8');
        $response->headers->set('Content-Disposition', 'attachment; filename="' . '' . '"');
        return $response;
//        dump($entities[2]->getAnimal()->getName());die;
//        throw new \RuntimeException('Action for exporting an entity not defined');
    }
}