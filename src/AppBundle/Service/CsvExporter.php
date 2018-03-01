<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 15.02.2018
 * Time: 12:19
 */

namespace AppBundle\Service;


use AppBundle\Entity\WorkTime;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\HttpFoundation\StreamedResponse;

class CsvExporter
{
    private $financialStatement;

    public function __construct(FinancialStatement $financialStatement)
    {
        $this->financialStatement = $financialStatement;
    }

    public function getWorkTimeRaport(QueryBuilder $queryBuilder)
    {
        $workTimes = $queryBuilder->getQuery()->getResult();
        $entities = new ArrayCollection($workTimes);
        $response = new StreamedResponse();
//        $entity = $entities->current();
        $response->setCallback(function () use ($entities, $workTimes) {
            $handle = fopen('php://output', 'w+');
            fputcsv($handle, ['Opiekun', 'Zwierzę', 'Status', 'Start', 'Koniec', 'Czas', 'Kwota']);

            /** @var WorkTime $entity */
            while ($entity = $entities->current()) {
                $timeDiff = $entity->getStart()->diff($entity->getEnd());
                $row = [
                    $entity->getUser()->getUsername(),
                    $entity->getAnimal()->getName(),
                    $entity->getStatus()->getStatus(),
                    $entity->getStart()->format('H:i d-m-Y'),
                    $entity->getEnd()->format('H:i d-m-Y'),
                    $timeDiff->format('%h h i %i min')
                ];

                $oneVisitFinacialStatement = $this->financialStatement->oneVisit($entity);

                $row[] = round($oneVisitFinacialStatement['amountSum'], 2) . ' zl';

                fputcsv($handle, $row);
                $entities->next();
            }

            $finacialStatement = $this->financialStatement->allTime($workTimes);

            fputcsv($handle,
                [
                    'Wypłata:', $finacialStatement['amountSum'] . 'zl',
                    'Przychód:', $finacialStatement['grossIncomSum'] . 'zl',
                    'Dochód', $finacialStatement['netIncomSum'] . 'zl'
                ]
            );

            fclose($handle);

        });
        $response->headers->set('Content-Type', 'text/csv; charset=utf-8');
        $response->headers->set('Content-Disposition', 'attachment; filename="' . "raport.csv" . '"');
        return $response;
    }
}