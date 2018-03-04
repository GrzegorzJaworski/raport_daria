<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 01.03.2018
 * Time: 19:40
 */

namespace AppBundle\Controller\EasyAdmin;


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

        for ($i = $begin; $i <= $end; $i->modify('+1 day')) {
            for ($j = 0; $j < $perDay; $j++) {
                $entity->setDate($i);
                $this->em->persist($entity);
                $this->em->flush();
                $this->em->clear();
            }
        }
    }
}