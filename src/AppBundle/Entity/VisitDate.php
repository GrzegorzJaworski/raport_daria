<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 01.03.2018
 * Time: 16:16
 */

namespace AppBundle\Entity;


use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="VisitDateRepository")
 * @ORM\Table(name="visit_date")
 */
class VisitDate
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Animal", cascade={"persist"})
     */
    private $animal;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Date", inversedBy="visits")
     */
    private $date;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User", inversedBy="visits")
     */
    private $user;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $startTime;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $endTime;
    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return Animal
     */
    public function getAnimal()
    {
        return $this->animal;
    }

    /**
     * @param Animal $animal
     */
    public function setAnimal(Animal $animal)
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

    /**
     * @param mixed $date
     */
    public function setDate($date)
    {
        $this->date = $date;
    }

    public function getTest()
    {

    }

    /**
     * @return User
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * @param User $user
     */
    public function setUser(User $user)
    {
        $this->user = $user;
    }

    /**
     * @return mixed
     */
    public function getStartTime()
    {
        return $this->startTime;
    }

    /**
     * @param mixed $startTime
     */
    public function setStartTime($startTime)
    {
        $this->startTime = $startTime;
    }

    /**
     * @return mixed
     */
    public function getEndTime()
    {
        return $this->endTime;
    }

    /**
     * @param mixed $endTime
     */
    public function setEndTime($endTime)
    {
        $this->endTime = $endTime;
    }

    public function __toString()
    {
        return $this->getAnimal()->getName();
    }
}