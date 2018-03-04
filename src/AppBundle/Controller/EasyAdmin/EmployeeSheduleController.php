<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 03.03.2018
 * Time: 15:37
 */

namespace AppBundle\Controller\EasyAdmin;


use AppBundle\Entity\EmployeesShedule;
use AppBundle\Entity\User;
use AppBundle\Entity\VisitDate;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class EmployeeSheduleController extends AdminController
{
    /**
     * @Route("shedule", name="employees_shedule")
     * @throws \Doctrine\ORM\ORMException
     */
    public function employeeShedule()
    {
        $tomorrow = new \DateTime('tomorrow');

        $this->em = $this->getDoctrine()->getManager();

        /** @var VisitDate[] $animalsVisitBook */
        $animalsVisitBook = $this->em->getRepository(VisitDate::class)->findByDate($tomorrow);

        /** @var EmployeesShedule[] $petsitterVisits */
        $petsitterVisits = $this->em->getRepository(EmployeesShedule::class)->findByDate($tomorrow);

        /** @var User[] $petsitters */
        $petsitters = $this->em->getRepository(User::class)->findBy([
            'enabled' => 1
        ]);

//        dump($petsitter);die;
        return $this->render('easy_admin/shedule.html.twig', [
           'animalsVisitBook' => $animalsVisitBook,
           'petsitterVisits' => $petsitterVisits,
            'petsitters' => $petsitters
        ])  ;
    }
}