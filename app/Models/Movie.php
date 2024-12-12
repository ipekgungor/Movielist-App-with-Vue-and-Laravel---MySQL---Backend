<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = [
        'name',
        'summary',
        'director',
        'actors',
        'year',
        'poster_url',
        'imdb_rating',
        'available_platforms'
    ];

    public function favorites()
    {
        return $this->hasMany(Favorite::class);
    }
}
