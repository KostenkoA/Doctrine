<?php

namespace App\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class HomeControllerTest extends WebTestCase
{
    public function testIndex()
    {
        $client = self::createClient();

        $crawler = $client->request('GET', '/home/3');

        self::assertEquals(200, $client->getResponse()->getStatusCode());
        self::assertEquals(1, $crawler->filter('html:contains("email")')->count(),
            'Should change the flag showAdditionInfo on the true');
        self::assertGreaterThan(0, $crawler->filter('html:contains("Europe/Helsinki")')->count(),
            'The page should contain a timezone: Europe/Helsinki');
    }
}