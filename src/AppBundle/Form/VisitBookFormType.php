<?php

namespace AppBundle\Form;

use AppBundle\Entity\VisitDate;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\OptionsResolver\OptionsResolver;

class VisitBookFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('animal', null, [
                'label' => 'test'
            ])
            ->add('user')
            ->add('startTime')
            ->add('endTime')
            ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => VisitDate::class
        ]);
    }
}
