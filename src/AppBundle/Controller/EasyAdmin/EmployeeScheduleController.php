<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 03.03.2018
 * Time: 15:37
 */

namespace AppBundle\Controller\EasyAdmin;


use AppBundle\Entity\EmployeeSchedule;
use AppBundle\Entity\User;
use AppBundle\Entity\VisitDate;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class EmployeeScheduleController extends AdminController
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

        /** @var EmployeeSchedule[] $petsitterVisits */
        $petsitterVisits = $this->em->getRepository(EmployeeSchedule::class)->findByDate($date);

        /** @var User[] $petsitters */
        $petsitters = $this->em->getRepository(User::class)->findBy([
            'enabled' => 1
        ]);

        if ($request->isXmlHttpRequest()){

            $animals = [];
            foreach ($animalsVisitBook as $animalVisit) {
                $animals[] = [
                    'id'=>$animalVisit->getId(),
                    'animalName'=>$animalVisit->getAnimal()->getName()
                ];
            }

            $petsitterVisistArray = [];
            foreach ($petsitterVisits as $petsitterVisit) {
                $petsitterVisistArray[] = [
                    'id' => $petsitterVisit->getId()
                ];
            }

            $deta = ['animals'=>$animals, 'petsitters' =>$petsitterVisistArray];

            return new JsonResponse($deta);
        } else {
            return $this->render('easy_admin/shedule.html.twig', [
                'animalsVisitBook' => $animalsVisitBook,
                'petsitterVisits' => $petsitterVisits,
                'petsitters' => $petsitters
            ])  ;
        }
    }

    /**
     *
     * @Route("shedule/new", name="shedule_new")
     * @Method({ "POST"})
     */
    public function newSheduleAction(Request $request)
    {
        if (!$request->isXmlHttpRequest()){
            return $this->redirectToRoute('admin');
        }
        $shedule = new EmployeeSchedule();
        $date = $request->request->all();
//        dump($date);die;
        $form = $this->createForm('EvalBundle\Form\DepartmentType', $department);
        $form->handleRequest($request);
        $status = "";

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($department);
            $em->flush();
            $status = "saved";

        }else{
            $status = "invalid";
        }

        return new JsonResponse(array('status' => $status));

    }
}