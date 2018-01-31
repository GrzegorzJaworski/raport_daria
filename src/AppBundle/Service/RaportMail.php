<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 05.11.2017
 * Time: 20:12
 */

namespace AppBundle\Service;

use AppBundle\Entity\Raport;
use AppBundle\Entity\WorkTime;
use Psr\Container\ContainerInterface;

class RaportMail
{
    private $mailer;
    private $container;

    public function __construct(\Swift_Mailer $mailer, ContainerInterface $container)
    {
        $this->mailer = $mailer;
        $this->container = $container;
    }

    /**
     * @param Raport | WorkTime $raport
     * @throws \Psr\Container\ContainerExceptionInterface
     * @throws \Psr\Container\NotFoundExceptionInterface
     * @throws \Twig\Error\Error
     */
    public function sendRaportMail($raport)
    {
        $message = \Swift_Message::newInstance('Raport od '. $raport->getUser()->getUsername())
            ->setFrom('grzegorz_j@go2.pl')
            ->setTo('dariagodlewska@dariagodlewska.pl')
            ->setBody(
                $this->container->get('templating')->render(
                    'Emails/raport.html.twig',
                    array(
                        'raport' => $raport
                    )
                ),
                'text/html'
            )
        ;
        $this->mailer->send($message);
    }
}
