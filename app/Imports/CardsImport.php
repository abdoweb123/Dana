<?php

namespace App\Imports;

use App\Models\Card;
use App\Models\Category;
use App\Models\Group;
use App\Models\Serial;
use Illuminate\Validation\ValidationException;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class CardsImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        // Define the expected column names
        $expectedColumns =
            [
                'title_ar', 'title_en', 'category_name_ar', 'category_name_en', 'group_name_ar',
                'group_name_en', 'sale_value', 'cost_value'
            ];

        // Check if all expected columns are present in the $row array
        foreach ($expectedColumns as $column) {
            if (!array_key_exists($column, $row)) {
                // Throw a validation exception if any expected column is missing
                throw ValidationException::withMessages([
                    'columns' => __('dash.error_entered_data: ').$column,
                ]);
            }
        }


        // To check if Category exists
        $category = Category::query()->where('title_ar',$row['category_name_ar'])
                            ->orWhere('title_en',$row['category_name_en'])->first();

        if(!$category){
            $category = Category::query()->create([
                'title_ar'=> $row['category_name_ar'],
                'title_en'=> $row['category_name_en'],
            ]);
        }


        // To check if Group exists
        $group = Group::query()->where('title_ar',$row['group_name_ar'])
            ->orWhere('title_en',$row['group_name_en'])->first();

        if(!$group){
            $group = Group::query()->create([
                'title_ar'=> $row['group_name_ar'],
                'title_en'=> $row['group_name_en'],
            ]);
        }


        // Create a new Card instance
        $card = new Card();
        $card->ssqu = $row['ssqu'];
        $card->code = $row['code'];
        $card->pin = $row['pin'];
        $card->category_id = $category->id;
        $card->title_ar = $row['title_ar'];
        $card->title_en = $row['title_en'];
        $card->price = $row['sale_value'];
        $card->discount = abs($row['sale_value'] - $row['cost_value']);
        $card->save();


        $card->groups()->attach([$group->id]);

        return $card;

    }


}
