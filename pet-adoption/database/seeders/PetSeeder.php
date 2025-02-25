<?php

namespace Database\Seeders;

use App\Models\Pet;
use Illuminate\Database\Seeder;

class PetSeeder extends Seeder
{
    public function run()
    {
        Pet::create([
            'name' => 'MATEO',
            'type' => 'dog',
            'image' => 'images/mateo.jpg',
            'status' => 'available',
            'adoption_fee' => 1000,
        ]);

        Pet::create([
            'name' => 'ALICE',
            'type' => 'cat',
            'image' => 'images/alice.jpg',
            'status' => 'available',
            'adoption_fee' => 500,
        ]);

        Pet::create([
            'name' => 'MITA',
            'type' => 'dog',
            'image' => 'images/mita.jpg',
            'status' => 'available',
            'adoption_fee' => 1000,
        ]);
    }
}