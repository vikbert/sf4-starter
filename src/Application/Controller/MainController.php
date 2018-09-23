<?php

namespace App\Application\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends Controller
{
    /**
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     * @Route("/{url}", name="remove_trailing_slash",
     *     requirements={"url" = ".*\/$"})
     */
    public function removeTrailingSlash(Request $request)
    {
        $pathInfo = $request->getPathInfo();
        $requestUri = $request->getRequestUri();

        $url = str_replace($pathInfo, rtrim($pathInfo, ' /'), $requestUri);

        return $this->redirect($url, 308);
    }

    /**
     * @return \Symfony\Component\HttpFoundation\Response
     *
     * @throws \LogicException
     * @Route("/", name="app.index")
     */
    public function index()
    {
        return $this->render('main/index.html.twig');
    }
}
