<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 30.10.2017
 * Time: 22:48
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="raport")
 */
class Raport
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User", inversedBy="raport")
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank()
     */
    private $message;

    /**
     * @ORM\Column(type="text")
     */
    private $rLat;

    /**
     * @ORM\Column(type="text")
     */
    private $rLong;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Animal")
     */
    private $animal;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return mixed
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * @param mixed $user
     */
    public function setUser($user)
    {
        $this->user = $user;
    }

    /**
     * @return mixed
     */
    public function getMessage()
    {
        return $this->message;
    }

    /**
     * @param mixed $message
     */
    public function setMessage($message)
    {
        $this->message = $message;
    }

    /**
     * @return mixed
     */
    public function getRLat()
    {
        return $this->rLat;
    }

    /**
     * @param mixed $rLat
     */
    public function setRLat($rLat)
    {
        $this->rLat = $rLat;
    }

    /**
     * @return mixed
     */
    public function getRLong()
    {
        return $this->rLong;
    }

    /**
     * @param mixed $rLong
     */
    public function setRLong($rLong)
    {
        $this->rLong = $rLong;
    }

    /**
     * @return mixed
     */
    public function getAnimal()
    {
        return $this->animal;
    }

    /**
     * @param mixed $animal
     */
    public function setAnimal($animal)
    {
        $this->animal = $animal;
    }

    /**
     * @return mixed
     */
    public function getDate()
    {
        return $this->date;
    }


    public function setDate()
    {
        $this->date = new \DateTime();
    }

    public function __toString() {
        return $this->message;
    }
}