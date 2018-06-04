<?php

namespace AppBundle\Form;

use AppBundle\Entity\Movie;
use Bnbc\UploadBundle\Form\Type\AjaxfileType;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class MovieType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('animal', EntityType::class,[
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
            ->add('date', DateType::class)
            ->add('movie', AjaxfileType::class,[
                'progressBar'         => true,
                'progressBarClass'    => 'bnbc-ajax-file-progress',
                'compound' => false,
                'formData' => [
                    'upload_folder' => 'movie'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver
            ->setDefaults([
                'data_class' => Movie::class
            ])
        ;
    }
}
