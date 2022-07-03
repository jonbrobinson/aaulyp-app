<?php

use App\Http\Controllers\LandingPagesController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [LandingPagesController::class, 'home']);

Route::get('/join', [LandingPagesController::class, 'join']);

Route::get('/membershipPortal', [LandingPagesController::class, 'membershipPortal']);

Route::get('/contact', [LandingPagesController::class, 'contact']);
