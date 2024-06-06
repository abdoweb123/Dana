<?php

namespace App\Http\Controllers\Dash;

use App\Imports\CardsImport;
use App\Rules\ExcelFile;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Imports\ProductsImport;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Response;

class CardController extends Controller
{

    // To import Serials
    public function importSerials(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:xlsx,xls|max:2048', // Validate file type and size
        ]);

        $file = $request->file('file');

        Excel::import(new ProductsImport($request->card_id), $file);

        return redirect()->back()->with('success', __('dash.Data_imported_successfully') );
    }


    // To import Cards
    public function importCards(Request $request)
    {
        $request->validate([
            'file' => 'required|file|mimes:xlsx,xls|max:2048', // Validate file type and size
        ]);

        $file = $request->file('file');

        Excel::import(new CardsImport(), $file);

        return redirect()->back()->with('success', __('dash.Data_imported_successfully'));
    }


    // To download Excel
    public function downloadExcel(Request $request)
    {
        $urlPath = $request->input('path');
        $filePath = public_path(parse_url($urlPath, PHP_URL_PATH));

        if (file_exists($filePath)) {
            return Response::download($filePath, basename($filePath));
        } else {
            return redirect()->back()->withErrors(['file_not_found' => 'The requested file does not exist.']);
        }
    }




}
