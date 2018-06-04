<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 17.03.2018
 * Time: 13:45
 */

namespace AppBundle\Entity;


use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="date")
 */
class Date
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="date")
     */
    private $date;

    /**
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\VisitDate", mappedBy="date")
     */
    private $visits;

    public function __construct()
    {
        $this->visits = new ArrayCollection();
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @return \DateTime
     */
    public function getDate()
    {
        return $this->date;
    }

    /**
     * @param \DateTime $date
     */
    public function setDate(\DateTime $date)
    {
        $this->date = $date;
    }

    /**
     * @return ArrayCollection|VisitDate[]
     */
    public function getVisits()
    {
        return $this->visits;
    }

    /**
     * @param VisitDate $visits
     */
    public function setVisits(VisitDate $visits)
    {
        $this->visits[] = $visits;
    }

    public function __toString()
    {
        return $this->getDate()->format('d-m-Y');
    }
}