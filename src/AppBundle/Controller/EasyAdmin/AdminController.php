<?php
namespace AppBundle\Controller\EasyAdmin;

use AppBundle\Entity\WorkTime;
use AppBundle\Form\Filter\WorkTimeAdminFilterType;
use AppBundle\Service\FinancialStatement;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AdminController as BaseAdminController;
use EasyCorp\Bundle\EasyAdminBundle\Event\EasyAdminEvents;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class AdminController extends BaseAdminController
{
    /**
     * @var FinancialStatement
     */
    private $financialStatement;

    /**
     * AdminController constructor.
     * @param FinancialStatement $financialStatement
     */
    public function __construct(FinancialStatement $financialStatement)
    {
        $this->financialStatement = $financialStatement;
    }

    /**
     * @Route("/dashboard", name="admin_dashboard")
     */
    public function dashboardAction()
    {
        $em = $this->getDoctrine()->getManager();

        $actualMonthWorkTimes = $em->getRepository(WorkTime::class)->findAllActualMonth();
        $todayFinacialStatement = $this->financialStatement->today($actualMonthWorkTimes);
        $monthlyFinacialStatement = $this->financialStatement->allTime($actualMonthWorkTimes);
//        dump($actualMonthWorkTimes);die;
        return $this->render('easy_admin/dashboard.html.twig', [
            'genusCount' => 5,
            'publishedGenusCount' => 5,
            'randomGenus' => 1,
            'todayFinacialStatement'=>$todayFinacialStatement,
            'monthlyFinacialStatement'=>$monthlyFinacialStatement
        ]);
    }

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
//dump($this->request->query);die;
        if ($this->request->query->has('reportButton')){
            $response = $this->forward('AppBundle\Controller\EasyAdmin\WorkTimeController:raportAction');
            return $response;
        }

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
}
