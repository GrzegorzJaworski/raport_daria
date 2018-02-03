<?php

namespace AppBundle\Controller;

use AppBundle\Entity\User;
use AppBundle\Entity\WorkTime;
use AppBundle\Form\WorkTimeFormType;
use AppBundle\Service\RaportMail;
use Psr\Container\ContainerExceptionInterface;
use Psr\Container\NotFoundExceptionInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Twig\Error\Error;

class WorkTimeController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('', array('name' => $name));
    }

    /**
     * @Route("/worktime/new", name="worktime_new")
     * @param Request $request
     * @param RaportMail $raportMail
     * @return Response
     */
    public function newAction(Request $request, RaportMail $raportMail)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        /** @var User $user */
        $user = $this->getUser();
        $actualWorkTime = $user->getWorkTime()[0];

        $status = $actualWorkTime ? $actualWorkTime->getStatus() : 'Przerwa';

        $form = $this->createForm(WorkTimeFormType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if ($actualWorkTime) {
                $actualWorkTime->setEnd(new \DateTime());
            }
            /** @var WorkTime $workTime */
            $workTime = $form->getData();

            $workTime->setUser($user);
            $workTime->setStart(new \DateTime());

            $em = $this->getDoctrine()->getManager();
            $em->persist($workTime);
            if ($actualWorkTime) {
                $em->persist($actualWorkTime);
            }
            $em->flush();

            $this->addFlash('success', 'Raport wysłany');

            try {
                $raportMail->sendRaportMail($workTime);
            } catch (NotFoundExceptionInterface $e) {
            } catch (ContainerExceptionInterface $e) {
            } catch (Error $e) {
            }

            return $this->redirectToRoute('homepage');
        }

        return $this->render('worktime/new.html.twig', [
        'form' => $form->createView(),
        'status' => $status
        ]);
    }
}
