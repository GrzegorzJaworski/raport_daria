<?php
/**
 * Created by PhpStorm.
 * User: Grzesiek
 * Date: 13.02.2018
 * Time: 13:16
 */

namespace AppBundle\Form;


use AppBundle\Entity\WorkTime;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class WorkTimeAdminFilterType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('message', TextType::class, [
                'label' => false,
                'required' => false,
            ])
            ->add('user', EntityType::class, [
                'class' => 'AppBundle:User',
                'placeholder' => '+Wybierz opiekuna+',
                'label' => false,
                'required' => false,
            ])
            ->add('animal', EntityType::class, [
                'class' => 'AppBundle:Animal',
                'choice_label' => 'name',
                'placeholder' => '+Wybierz zwierzę+',
                'label' => false,
                'required' => false,
            ])
            ->add('status', EntityType::class, [
                'class' => 'AppBundle:Status',
                'choice_label' => 'status',
                'placeholder' => '+Wybierz status+',
                'label' => false,
                'required' => false,
            ])
            ->add('start', DateType::class, [
                'label' => false,
                'required' => false,
                'widget' => 'single_text',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
            ])
            ->add('end', DateType::class, [
                'label' => false,
                'required' => false,
                'widget' => 'single_text',
                'html5' => false,
                'attr' => ['class' => 'js-datepicker'],
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
           'data_class'=>WorkTime::class
        ]);
    }
}