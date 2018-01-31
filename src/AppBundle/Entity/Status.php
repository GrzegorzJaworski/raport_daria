<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 04.11.2017
 * Time: 17:14
 */

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="status")
 */
class Status
{

    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string")
     */
    private $status;

    /**
     * @ORM\Column(type="boolean")
     */
    private $isWorking;

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
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * @param mixed $status
     */
    public function setStatus($status)
    {
        $this->status = $status;
    }

    /**
     * @return mixed
     */
    public function getisWorking()
    {
        return $this->isWorking;
    }

    /**
     * @param mixed $isWorking
     */
    public function setIsWorking($isWorking)
    {
        $this->isWorking = $isWorking;
    }

    public function __toString()
    {
        return $this->getStatus();
    }
}
