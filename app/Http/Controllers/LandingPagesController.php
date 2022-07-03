<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LandingPagesController extends Controller
{
    public function contact()
    {
        return view('landingPages.contact');
    }

    public function home()
    {
        return view('landingPages.home');
    }

    public function join()
    {
        return view('landingPages.join');
    }

    public function membershipPortal()
    {
        return redirect('https://www.joinit.org/o/aaultx');
    }
}
