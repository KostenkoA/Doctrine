<?php

namespace App\Controller;

use App\Entity\PageContent;
use App\Repository\PageContentRepository;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class HomeController extends Controller
{
    /**
     * @Route("/home/{id}", name="home")
     * @param $id
     * @return Response
     */
    public function index($id)
    {
        $entityManager = $this->getDoctrine()->getManager();

        /**
         * @var PageContentRepository $repository
         */
        $repository = $entityManager->getRepository(PageContent::class);
        $page = $repository->find($id);

        return $this->render('/page.html.twig', [
            'page' => $page
        ]);

    }
}
