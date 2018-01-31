<?php

namespace AppBundle\Controller;


use AppBundle\Entity\Raport;
use AppBundle\Entity\User;
use AppBundle\Entity\WorkTime;
use AppBundle\Form\RaportFormType;
use AppBundle\Service\RaportMail;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class RaportController extends Controller
{

    /**
     * @Route("/raport/new", name="raport_create")
     * @param Request $request
     * @param RaportMail $raportMail
     * @return \Symfony\Component\HttpFoundation\RedirectResponse|Response
     * @throws \Psr\Container\ContainerExceptionInterface
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \Twig\Error\Error
     */
    public function newAction(Request $request, RaportMail $raportMail)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        /** @var User $user */
        $user = $this->getUser();

        $form = $this->createForm(RaportFormType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            /** @var Raport $raport */
            $raport = $form->getData();
            $raport->setUser($user);
            $raport->setDate();

            $em = $this->getDoctrine()->getManager();
            $em->persist($raport);
            $em->flush();

            $this->addFlash('success', 'Raport wysłany');

            $raportMail->sendRaportMail($raport);

            return $this->redirectToRoute('homepage');
        }

        return $this->render('raport/new.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/raport/travel", name="raport_travel")
     */
    public function travelAction()
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $em = $this->getDoctrine()->getManager();
        $animals = $em->getRepository('AppBundle:Animal')->findAll();

        return $this->render('raport/travel.html.twig', [
            'animals' =>$animals,
        ]);
    }

    /**
     * @Route("/raport/upload", name="raport_upload")
     */
    public function uploadAction()
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $em = $this->getDoctrine()->getManager();
        $animals = $em->getRepository('AppBundle:Animal')->findAll();

        return $this->render('raport/upload.html.twig', [
            'animals' =>$animals,
        ]);
    }

    /**
     * @Route("/raport/{id}")
     * @param $id
     * @return Response
     */
    public  function showMessageAction($id)
    {
        return $this->render('raport/show.html.twig', [
            'id' => $id
        ]);
    }

}
