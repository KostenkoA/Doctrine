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
     * @Route("/{name}", name="home")
     * @param $name
     * @return Response
     */
    public function index($name)
    {
        $entityManager = $this->getDoctrine()->getManager();

        /**
         * @var PageContentRepository $repository
         */
        $repository = $entityManager->getRepository(PageContent::class);
        $page = $repository->findPageByName($name);
/*
        echo '<pre>';
        var_dump($page);
        echo '</pre>';
        die;
*/
        return $this->render('/page.html.twig', [
            'page' => $page[0]
        ]);

    }
}
