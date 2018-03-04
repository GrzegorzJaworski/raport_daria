<?php
/**
 * Created by PhpStorm.
 * User: Grzegorz Jaworski
 * Date: 01.03.2018
 * Time: 17:08
 */

namespace AppBundle\Form;


use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;


class VisitDateFormType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder
            ->add('animal', EntityType::class, [
                'class' => 'AppBundle:Animal',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->orderBy('u.name', 'ASC');
                },
                'choice_label' => 'name',
                'placeholder' => '+Wybierz zwierzę+',
                'label' => false,
                'required' => true,
            ])
            ->add('zapisz', SubmitType::class)
        ;
    }
}