<?php

namespace App\Controller;

use App\Entity\PageContent;
use DateTime;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


class AdditionController extends Controller
{
    /**
     * @Route("/addition", name="addition")
     */
    public function index()
    {
        $entityManager = $this->getDoctrine()->getManager();

        $page = new PageContent();

        $page->setPageName('Seven');
        $page->setTitle('Seven page');
        $page->setAboutContent('Each time you make a change to your schema, 
        run these two commands to generate the migration and then execute it. 
        Be sure to commit the migration files and execute them when you deploy.');
        $page->setAdditionalInfo('tel:044-330-12-15; email:example@gmail.com');
        $page->setShowAdditionalInfo(false);
        $page->setUpdatedAt(\date_create());

        $entityManager->persist($page);
        $entityManager->flush();

        return new Response('Added new page, name: '.$page->getPageName());

    }
}
