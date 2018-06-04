<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 01.03.2018
 * Time: 19:40
 */

namespace AppBundle\Controller\EasyAdmin;


use AppBundle\Entity\Date;
use AppBundle\Entity\VisitDate;
use AppBundle\Form\VisitDateFormType;
use DateTime;

class VisitDateController extends AdminController
{

    /**
     * @param VisitDate $entity
     * @throws \Doctrine\ORM\ORMException
     * @throws \Doctrine\Common\Persistence\Mapping\MappingException
     */
    protected function persistEntity($entity)
    {
        $request = $this->request->request->get('visitdate');
        $begin = new DateTime($request['begin']);
        $end = new DateTime($request['end']);
        $perDay = $request['perDay'];
//        dump($entity);die;
        for ($i = $begin; $i <= $end; $i->modify('+1 day')) {
            for ($j = 0; $j < $perDay; $j++) {
                $date = $this->em->getRepository(Date::class)->findOneByDate($i);
                if (count($date) == 0) {
                    $date = new Date();
                    $date->setDate($i);
                    $this->em->persist($date);
                }
                $entity->setDate($date);
                $this->em->persist($entity);
                $this->em->flush();
                $this->em->clear();
            }
        }
    }
}