<?php

namespace Andrejczyn\Bundle\HallowWorldBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

/**
 * Class DefaultController
 *
 * @package Andrejczyn\Bundle\HallowWorldBundle\Controller
 */
class DefaultController extends Controller
{
    /**
     * @return Response
     */
    public function indexAction()
    {
        return new Response("hallow world");
    }
}
