<?php

namespace AppBundle\Form;

use AppBundle\Entity\Raport;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RaportFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('message', null, [
                'label' => false,
                'required' => true,
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
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('u')
                        ->orderBy('u.name', 'ASC');
                },
                'choice_label' => 'name',
                'placeholder' => '+Wybierz zwierzę+',
                'label' => false,
                'required' => true,
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Raport::class
        ]);
    }

}
