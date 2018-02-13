<?php
namespace AppBundle\Controller;

use AppBundle\Form\WorkTimeAdminFilterType;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AdminController as BaseAdminController;
use EasyCorp\Bundle\EasyAdminBundle\Event\EasyAdminEvents;

class AdminController extends BaseAdminController
{
    protected function listAction()
    {

        $form = $this->createForm(WorkTimeAdminFilterType::class);


        $this->dispatch(EasyAdminEvents::PRE_LIST);

        $fields = $this->entity['list']['fields'];
        $paginator = $this->findAll($this->entity['class'], $this->request->query->get('page', 1), $this->config['list']['max_results'], $this->request->query->get('sortField'), $this->request->query->get('sortDirection'), $this->entity['list']['dql_filter']);

        $this->dispatch(EasyAdminEvents::POST_LIST, array('paginator' => $paginator));

        return $this->render($this->entity['templates']['list'], array(
            'form' => $form->createView(),
            'paginator' => $paginator,
            'fields' => $fields,
            'delete_form_template' => $this->createDeleteForm($this->entity['name'], '__id__')->createView(),
        ));
    }

    protected function searchAction()
    {
        $this->dispatch(EasyAdminEvents::PRE_SEARCH);
        $form = $this->createForm(WorkTimeAdminFilterType::class);

        $query = trim($this->request->query->get('query'));
        // if the search query is empty, redirect to the 'list' action
        if ('' === $query) {
            $queryParameters = array_replace($this->request->query->all(), array('action' => 'list', 'query' => null));
            $queryParameters = array_filter($queryParameters);

            return $this->redirect($this->get('router')->generate('easyadmin', $queryParameters));
        }

        $searchableFields = $this->entity['search']['fields'];
        $paginator = $this->findBy(
            $this->entity['class'],
            $query,
            $searchableFields,
            $this->request->query->get('page', 1),
            $this->config['list']['max_results'],
            isset($this->entity['search']['sort']['field']) ? $this->entity['search']['sort']['field'] : $this->request->query->get('sortField'),
            isset($this->entity['search']['sort']['direction']) ? $this->entity['search']['sort']['direction'] : $this->request->query->get('sortDirection'),
            $this->entity['search']['dql_filter']
        );
        $fields = $this->entity['list']['fields'];

        $this->dispatch(EasyAdminEvents::POST_SEARCH, array(
            'fields' => $fields,
            'paginator' => $paginator,
        ));

        return $this->render($this->entity['templates']['list'], array(
            'form' => $form->createView(),
            'paginator' => $paginator,
            'fields' => $fields,
            'delete_form_template' => $this->createDeleteForm($this->entity['name'], '__id__')->createView(),
        ));
    }

    public function createRaportSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
        if ($this->request->query->get("dateFor") || $this->request->query->get("dateUntil")) {
            if ($this->request->query->get('query') === true) {
                $searchQuery = '';
                $this->request->query->set('query',$searchQuery);
            }
            $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields);
            if ($this->request->query->get("dateFor")){
                $queryBuilder
                    ->andWhere('entity.date >= :dateFor')
                    ->setParameter('dateFor', $this->request->query->get("dateFor")." 00:00:00")
                ;
            }

            if ($this->request->query->get("dateUntil")) {
                $queryBuilder
                    ->andWhere('entity.date <= :dateUntil')
                    ->setParameter('dateUntil', $this->request->query->get("dateUntil")." 23:59:59")
                ;
            }
            return $queryBuilder;
        } else {
            return parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection, $dqlFilter);
        }
    }

    public function createWorkTimeSearchQueryBuilder($entityClass, $searchQuery, array $searchableFields, $sortField = null, $sortDirection = null, $dqlFilter = null)
    {
        $filterRequest = $this->request->query->get("work_time_admin_filter");
//        dump($test["animal"]);die;

        $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields);
        foreach ($filterRequest as $key => $value) {
            if ($value !=='' && $key != "_token") {
                $queryBuilder
                    ->andWhere("entity.$key = :$key")
                    ->setParameter($key, $value)
                ;
            }
        }
        if ($filterRequest['message'] !== '') {
            $this->request->query->set('query',$filterRequest['message']);
        } else {
            $this->request->query->set('query','');
        }

//        $queryBuilder
//            ->andWhere('entity.animal = :animal')
//            ->setParameter('animal', $filterRequest["animal"])
//        ;
//        dump($queryBuilder);die;
        return $queryBuilder;
//        if ($this->request->query->get("dateFor") || $this->request->query->get("dateUntil")) {
//            if ($this->request->query->get('query') === true) {
//                $searchQuery = '';
//                $this->request->query->set('query',$searchQuery);
//            }
//            $queryBuilder = parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields);
//            if ($this->request->query->get("dateFor")){
//                $queryBuilder
//                    ->andWhere('entity.start >= :dateFor')
//                    ->setParameter('dateFor', $this->request->query->get("dateFor")." 00:00:00")
//                ;
//            }
//
//            if ($this->request->query->get("dateUntil")) {
//                $queryBuilder
//                    ->andWhere('entity.start <= :dateUntil')
//                    ->setParameter('dateUntil', $this->request->query->get("dateUntil")." 23:59:59")
//                ;
//            }
//            return $queryBuilder;
//        } else {
//            return parent::createSearchQueryBuilder($entityClass, $searchQuery, $searchableFields, $sortField, $sortDirection, $dqlFilter);
//        }
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
