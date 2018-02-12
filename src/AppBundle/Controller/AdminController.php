<?php
namespace AppBundle\Controller;

use EasyCorp\Bundle\EasyAdminBundle\Controller\AdminController as BaseAdminController;
use Symfony\Component\HttpFoundation\Request;

class AdminController extends BaseAdminController
{    
    public function createSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
        if ($this->request->query->get("dateFor") || $this->request->query->get("dateUntil")) {
            die("tutaj");
            $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields);
            $queryBuilder
//                    ->from($this->entity['class'], 'entity')
                    ->andWhere('entity.date > :date')
                    ->setParameter('date', $this->request->query->get("dateFor"))
            ;
//            dump($queryBuilder);
//            die;
            
//            $em = $this->getDoctrine()->getManagerForClass($this->entity['class']);
//        /* @var DoctrineQueryBuilder */
//        $queryBuilder = $em->createQueryBuilder()
//            ->select('entity')
//            ->from($this->entity['class'], 'entity')
////            ->join('entity.buyer', 'buyer')
////            ->orWhere('LOWER(buyer.username) LIKE :query')
//            ->where('entity.    date > :date')
//            ->setParameter('date', $this->request->query->get("dateFor"))
//        ;
//        if (!empty($dqlFilter)) {
//            $queryBuilder->andWhere($dqlFilter);
//        }
//        if (null !== $sortField) {
//            $queryBuilder->orderBy('entity.'.$sortField, $sortDirection ?: 'DESC');
//        }
            
            return $queryBuilder;
        } else {
            return parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection, $dqlFilter);
        }
    }

    public function createNewUserEntity()
    {
        return $this->get('fos_user.user_manager')->createUser();
    }

    public function prePersistUserEntity($user)
    {
        $this->get('fos_user.user_manager')->updateUser($user, false);
    }

    public function preUpdateUserEntity($user)
    {
        $this->get('fos_user.user_manager')->updateUser($user, false);
    }
}
