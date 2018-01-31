<?php

namespace AppBundle\Form;

use AppBundle\Entity\Raport;
use AppBundle\Entity\WorkTime;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class WorkTimeFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('message', null, [
                'label' => false,
                'required' => false,
            ])
            ->add('rLat', null, [
                'attr' => ['class' => 'js-lat hidden'],
                'label' => false
            ])
            ->add('rLong', null, [
                'attr' => ['class' => 'js-long hidden'],
                'label' => false
            ])
            ->add('animal', EntityType::class, [
                'class' => 'AppBundle:Animal',
                'choice_label' => 'name',
                'placeholder' => '+Wybierz zwierzę+',
                'label' => false,
                'required' => true,
            ])
            ->add('status', EntityType::class, [
                'class' => 'AppBundle:Status',
                'choice_label' => 'status',
                'placeholder' => '+Wybierz status+',
                'label' => false,
                'required' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => WorkTime::class
        ]);
    }

}
