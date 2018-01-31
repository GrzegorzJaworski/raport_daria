<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\WorkTime", mappedBy="user")
     * @ORM\OrderBy({"id" = "DESC"})
     */
    private $workTime;

    /**
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Raport", mappedBy="user")
     * @ORM\OrderBy({"id" = "DESC"})
     */
    private $raport;

    /**
     * @ORM\Column(type="decimal", precision=5, scale=2, nullable=true)
     */
    private $hourlyRateVisit;

    /**
     * @ORM\Column(type="decimal", precision=5, scale=2, nullable=true)
     */
    private $hourlyRateDrive;

    public function __construct()
    {
        parent::__construct();
        $this->workTime = new ArrayCollection();
        $this->raport = new ArrayCollection();
    }

    public function getId()
    {
        return $this->id;
    }

    /**
     * @return ArrayCollection|WorkTime[]
     */
    public function getWorkTime()
    {
        return $this->workTime;
    }

    /**
     * @param mixed $workTime
     */
    public function setWorkTime($workTime)
    {
        $this->workTime = $workTime;
    }

    /**
     * @return ArrayCollection|Raport[]
     */
    public function getRaport()
    {
        return $this->raport;
    }

    /**
     * @param mixed $raport
     */
    public function setRaport($raport)
    {
        $this->raport = $raport;
    }

    /**
     * @return mixed
     */
    public function getHourlyRateVisit()
    {
        return $this->hourlyRateVisit;
    }

    /**
     * @param mixed $hourlyRateVisit
     */
    public function setHourlyRateVisit($hourlyRateVisit)
    {
        $this->hourlyRateVisit = $hourlyRateVisit;
    }

    /**
     * @return mixed
     */
    public function getHourlyRateDrive()
    {
        return $this->hourlyRateDrive;
    }

    /**
     * @param mixed $hourlyRateDrive
     */
    public function setHourlyRateDrive($hourlyRateDrive)
    {
        $this->hourlyRateDrive = $hourlyRateDrive;
    }
}
