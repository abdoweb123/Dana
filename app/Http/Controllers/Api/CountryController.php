<?php

namespace App\Http\Controllers\Api;

use App\Functions\ResponseHelper;
use App\Http\Controllers\Controller;
use App\Http\Resources\CountriesResource;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index()
    {
        $countries = Country::select('id', 'phone_code', 'image', 'length', 'currancy_code', 'title_en', 'title_ar')->get();

        return ResponseHelper::make(CountriesResource::collection($countries));
    }
}
