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
     * @Route("/home", name="home")
     */
    public function index()
    {
        $entityManager = $this->getDoctrine()->getManager();

       // $page = new PageContent();
        /**
         * @var PageContentRepository $repository
         */
        $repository = $entityManager->getRepository(PageContent::class);
        $page = $repository->findPageById(1);

        //var_dump($page);
        //die;

        return new Response(var_dump($page));


    }
}
