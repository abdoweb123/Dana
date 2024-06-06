<?php

namespace Database\Seeders;

use App\Models\Group;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GroupTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $array = [
            [
                "title_ar" => "عروض اليوم",
                "title_en" => "Today's Offers"
            ],
            [
                "title_ar" => "مجموعات التوفير",
                "title_en" => "Savings Sets"
            ],
            [
                "title_ar" => "الاكثر مبيعا",
                "title_en" => "Best Sellers"
            ],
            [
                "title_ar" => "البطاقات الجديدة",
                "title_en" => "New Cards"
            ],
            [
                "title_ar" => "الهدايا والعروض",
                "title_en" => "Gifts and Offers"
            ]
        ];
        foreach ($array as $key => $value) {
            $group = new Group();
            $group->title_ar = $value['title_ar'];
            $group->title_en = $value['title_en'];
            $group->save();
        }
    }
}
