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
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class EmployeeSheduleController extends AdminController
{
    /**
     * @Route("shedule", name="employees_shedule")
     * @throws \Doctrine\ORM\ORMException
     * @Method("GET")
     */
    public function employeeSheduleAction(Request $request)
    {
        if ($request->isXmlHttpRequest()){
            $date = new \DateTime($request->query->get('date'));
//            echo($request->query->get('date'));die;
        } else {
            $date = new \DateTime('tomorrow');
        }


        $this->em = $this->getDoctrine()->getManager();

        /** @var VisitDate[] $animalsVisitBook */
        $animalsVisitBook = $this->em->getRepository(VisitDate::class)->findByDate($date);

        /** @var EmployeesShedule[] $petsitterVisits */
        $petsitterVisits = $this->em->getRepository(EmployeesShedule::class)->findByDate($date);

        /** @var User[] $petsitters */
        $petsitters = $this->em->getRepository(User::class)->findBy([
            'enabled' => 1
        ]);

//        dump($petsitter);die;
        if ($request->isXmlHttpRequest()){
            $animals = [];

            foreach ($animalsVisitBook as $animalVisit) {
                $animals[] = [
                    'id'=>$animalVisit->getId(),
                    'animalName'=>$animalVisit->getAnimal()->getName()
                ];
            }
//            dump($animalsVisitBook);die;

            return new JsonResponse($animals);
        } else {
            return $this->render('easy_admin/shedule.html.twig', [
                'animalsVisitBook' => $animalsVisitBook,
                'petsitterVisits' => $petsitterVisits,
                'petsitters' => $petsitters
            ])  ;
        }
    }
}