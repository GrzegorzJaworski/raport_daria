<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 01.03.2018
 * Time: 09:24
 */

namespace AppBundle\Service;


use AppBundle\Entity\WorkTime;
use Doctrine\Common\Collections\ArrayCollection;

class FinancialStatement
{

    /**
     * @param WorkTime $workTime
     * @return array
     */
    public function oneVisit(WorkTime $workTime)
    {
        $grossIncomSum=0;
        $hourlyRate=0;
        $timeDiff = $workTime->getStart()->diff($workTime->getEnd());
        if ($workTime->getStatus()->getId() == 1) {
            $hourlyRate = $workTime->getUser()->getHourlyRateDrive();
        } elseif ($workTime->getStatus()->getId() == 2) {
            $hourlyRate = $workTime->getUser()->getHourlyRateVisit();
            $grossIncomSum = $workTime->getAnimal()->getHourlyRate();
        }

        $amount = $hourlyRate * $timeDiff->format('%h') + $hourlyRate * $timeDiff->format('%i') / 60;
        $amount = round($amount, 2);

        return [
            'grossIncomSum' => $grossIncomSum,
            'amountSum' => $amount
        ];
    }

    /**
     * @param WorkTime[] $workTimes
     * @return array
     */
    public function today(array $workTimes)
    {
        $workTimes = new ArrayCollection($workTimes);
        $amountSum = 0;
        $grossIncomSum = 0;

        /** @var WorkTime $workTime */
        while ($workTime = $workTimes->current()) {
            $workTimeDate = $workTime->getStart()->format('Y-m-d');
            $today = date('Y-m-d');
            if ($workTimeDate == $today) {
                $AmountAndGrossIncomArray = $this->oneVisit($workTime);
                $grossIncomSum += $AmountAndGrossIncomArray['grossIncomSum'];
                $amountSum += $AmountAndGrossIncomArray['amountSum'];
            }

            $workTimes->next();
        }
        $netIncomSum = $grossIncomSum - $amountSum;

        return [
            'amountSum' => $amountSum,
            'grossIncomSum' => $grossIncomSum,
            'netIncomSum' => $netIncomSum,
        ];
    }

    /**
     * @param WorkTime[] $workTimes
     * @return array
     */
    public function allTime(array $workTimes)
    {
        $workTimes = new ArrayCollection($workTimes);
        $amountSum = 0;
        $grossIncomSum = 0;

        /** @var WorkTime $workTime */
        while ($workTime = $workTimes->current()) {
            $AmountAndGrossIncomArray = $this->oneVisit($workTime);
            $grossIncomSum += $AmountAndGrossIncomArray['grossIncomSum'];
            $amountSum += $AmountAndGrossIncomArray['amountSum'];
            $workTimes->next();
        }
        $netIncomSum = $grossIncomSum - $amountSum;
        return [
            'amountSum' => $amountSum,
            'grossIncomSum' => $grossIncomSum,
            'netIncomSum' => $netIncomSum,
        ];
    }
}