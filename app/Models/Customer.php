<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Customer extends Model
{
	use HasFactory;

	public function companies(): BelongsToMany
	{
		return $this->belongsToMany(Company::class);
	}

	public function loans(): HasMany
	{
		return $this->hasMany(Loan::class);
	}
}
