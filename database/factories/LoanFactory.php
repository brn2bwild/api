<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Loan>
 */
class LoanFactory extends Factory
{
	/**
	 * Define the model's default state.
	 *
	 * @return array<string, mixed>
	 */
	public function definition(): array
	{
		return [
			'amount' => fake()->numberBetween(1000, 10000),
			'term' => 'monthly',
			'colombian_id' => fake()->randomDigit(),
			'company_id' => fake()->randomDigit(),
		];
	}
}
