<?php

namespace App\Imports;

use App\Models\Serial;
use Illuminate\Validation\ValidationException;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProductsImport implements ToModel, WithHeadingRow
{
    private $card_id;

    public function __construct($card_id)
    {
        $this->card_id = $card_id;
    }


    public function model(array $row)
    {
        // Define the expected column names
        $expectedColumns = ['serial'];

        // Check if all expected columns are present in the $row array
        foreach ($expectedColumns as $column) {
            if (!array_key_exists($column, $row)) {
                // Throw a validation exception if any expected column is missing
                throw ValidationException::withMessages([
                    'columns' => __('dash.error_entered_data: ').$column,
                ]);
            }
        }

        // If all expected columns are present, create a new Serial instance
        return new Serial([
            'key' => $row['serial'],
            'card_id'=> $this->card_id,
        ]);
    }


}
