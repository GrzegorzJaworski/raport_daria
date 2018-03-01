<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 28.02.2018
 * Time: 18:23
 */

namespace AppBundle\Repository;


use AppBundle\Entity\WorkTime;
use Doctrine\ORM\EntityRepository;

class WorkTimeRepository extends EntityRepository
{
    /**
     * @return WorkTime[]
     */
    public function findAllActualMonth()
    {
        $firstDayAcutalMonth = date('Y-m-01 00:00:01');
        $actualDay = date('Y-m-d 23:59:59');
        return $this->createQueryBuilder('workTime')
            ->andWhere('workTime.start >= :start')
            ->setParameter('start', $firstDayAcutalMonth)
            ->andWhere('workTime.end <= :end')
            ->setParameter('end', $actualDay)
            ->leftJoin('workTime.status', 'status')
            ->andWhere('status.isWorking = :isWorking')
            ->setParameter('isWorking', 1)
            ->getQuery()
            ->execute()
        ;
    }
}