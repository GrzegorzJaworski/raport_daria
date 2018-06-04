<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 16.03.2018
 * Time: 19:46
 */

namespace AppBundle\Entity;


use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="employees_schedule")
 */
class EmployeesSchedule
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    private $visitDate;

    /**
     * @ORM\Column(type="string")
     */
    private $employeesShedule;



    public function __construct()
    {
        $this->employeesShedule = new ArrayCollection();
    }

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

//    /**
//     * @return ArrayCollection
//     */
//    public function getEmployeesShedule()
//    {
//        return $this->employeesShedule;
//    }

    /**
     * @return mixed
     */
    public function getEmployeesShedule()
    {
        return $this->employeesShedule;
    }
    public function addEmployeeShedule(EmployeeSchedule $employeeSchedule)
    {
        $this->employeesShedule->add($employeeSchedule);
    }

    public function removeEmployeeShedule(EmployeeSchedule $employeeSchedule)
    {
        $this->employeesShedule->remove($employeeSchedule);
    }
}