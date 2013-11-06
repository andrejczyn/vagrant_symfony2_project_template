<?php

namespace Andrejczyn\Bundle\HallowWorldBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

/**
 * Class DefaultControllerTest
 *
 * @package Andrejczyn\Bundle\HallowWorldBundle\Tests\Controller
 */
class DefaultControllerTest extends WebTestCase
{
    /**
     * @return null
     */
    public function testIndex()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/hello/Fabien');

        $this->assertTrue($crawler->filter('html:contains("Hello Fabien")')->count() > 0);
    }
}
