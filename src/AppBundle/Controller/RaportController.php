<?php

namespace AppBundle\Controller;


use AppBundle\Entity\Movie;
use AppBundle\Entity\Raport;
use AppBundle\Entity\User;
use AppBundle\Entity\WorkTime;
use AppBundle\Form\MovieType;
use AppBundle\Form\RaportFormType;
use AppBundle\Service\RaportMail;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Filesystem\Exception\IOExceptionInterface;
use Symfony\Component\Filesystem\Filesystem;
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
     * @param Request $request
     * @return Response
     */
    public function uploadAction(Request $request)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');
//
//        $em = $this->getDoctrine()->getManager();
//        $animals = $em->getRepository('AppBundle:Animal')->findAll();

        $form = $this->createForm(MovieType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var Movie $movie */
            $movie = $form->getData();
            $movie->setMovie($this->_moveMovie($movie));
            $movie->setTitle('test');
            $movie->setIsYoutube(false);

            $em = $this->getDoctrine()->getManager();
            $em->persist($movie);
            $em->flush();
        }

        return $this->render('raport/upload.html.twig', [
            'form' =>$form->createView(),
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

    protected function _moveMovie(Movie $data){
        $fs = new Filesystem();

        $dir = $this->get('kernel')->getRootDir() . '/../web/uploads/';
        $coach_dir = $this->_createEntityFolder($data);

        # On déplace la photo dans le dossier
        if($photo = $data->getMovie()){
            $ext = pathinfo($photo, PATHINFO_EXTENSION);
            $name = 'photo.' . $ext;
//            dump($name);die;

            # Si le fichier existe (il peut ne pas exister dans le cas d'une modification où on uploaderai pas un nouveau fichier)
            if(file_exists($dir . $photo)){
                $fs->copy($dir . $photo, $coach_dir . '/' . $name, true);
                $fs->remove($dir . $photo);
            }
            return $name;
        }
        else {
            return null;
        }
    }

    protected function _createEntityFolder($data){
        $fs = new Filesystem();
        $dir = $this->get('kernel')->getRootDir() . '/../web/data/entity/' . $data->getId();
        try {
            $fs->mkdir($dir);
        }
        catch (IOExceptionInterface $e) {
            echo "Une erreur est survenue lors de la création du dossier : ". $e->getPath();
        }
        return $dir;
    }
}
