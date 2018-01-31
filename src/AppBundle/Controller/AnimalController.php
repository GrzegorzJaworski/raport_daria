<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Animal;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class AnimalController extends Controller
{
    /**
     * @Route("/animal/{id}/description", name="animal_show_description")
     * @Method("GET")
     */
    public function getAnimalInfoAction(Request $request, Animal $animal)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        if ($request->isXmlHttpRequest()) {
            $description = [];
            $description['imie'] = $animal->getName();
            $description['opis'] = $animal->getDescription();
            return new JsonResponse($description);
        }

        throw $this->createNotFoundException('Brak dostepu');
    }
}
