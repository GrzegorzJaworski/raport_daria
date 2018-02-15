<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 15.02.2018
 * Time: 12:19
 */

namespace AppBundle\Service;


use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\HttpFoundation\StreamedResponse;

class CsvExporter
{
    public function getWorkTimeRaport(QueryBuilder $queryBuilder)
    {
        $entities = new ArrayCollection($queryBuilder->getQuery()->getResult());
        $response = new StreamedResponse();
//        $entity = $entities->current();
        $response->setCallback(function () use ($entities) {
            $handle = fopen('php://output', 'w+');
            fputcsv($handle, ['Opiekun', 'Zwierzę', 'Status', 'Start', 'Koniec', 'Czas', 'Kwota']);
            $amountSum = 0;
            $incomSum = 0;

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

                if ($entity->getStatus()->getId() == 1) { // dojazd
                    $hourlyRate = $entity->getUser()->getHourlyRateDrive();
                    $amount = $hourlyRate * $timeDiff->format('%h') + $hourlyRate * $timeDiff->format('%i') / 60;
                    $row[] = round($amount, 2) . ' zl';
                    $amountSum += round($amount, 2);
                } elseif ($entity->getStatus()->getId() == 2) { //wizyta
                    $hourlyRate = $entity->getUser()->getHourlyRateVisit();
                    $amount = $hourlyRate * $timeDiff->format('%h') + $hourlyRate * $timeDiff->format('%i') / 60;
                    $row[] = round($amount, 2) . ' zl';
                    $amountSum += round($amount, 2);
                    $incomSum += $entity->getAnimal()->getHourlyRate();
                }

                fputcsv($handle, $row);
                $entities->next();
            }
            fputcsv($handle, ['Wypłata:', $amountSum. 'zl',
                                'Przychód:', $incomSum. 'zl',
                                'Dochód', $incomSum-$amountSum. 'zl'
                ]);

            fclose($handle);

        });
        $response->headers->set('Content-Type', 'text/csv; charset=utf-8');
        $response->headers->set('Content-Disposition', 'attachment; filename="' . "raport.csv" . '"');
        return $response;
    }
}