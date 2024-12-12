<?php

namespace App\Http\Controllers;

use App\Models\Favorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    public function index()
    {
        return Favorite::all();
    }

    public function store(Request $request)
    {
        $request->validate([
            'movie_id' => 'required|exists:movies,id',
        ]);

        $existingFavorite = Favorite::where('movie_id', $request->movie_id)->first(); //I checked if favorites already exist.
        if ($existingFavorite) {
            return response()->json(['message' => 'This movie is already in your favorites!'], 400);
        }

        $favorite = new Favorite();
        $favorite->movie_id = $request->movie_id;
        $favorite->save();

        return response()->json(['message' => 'Movie added to favorites'], 201);
    }

    public function destroy($movie_id)
    {
        $favorite = Favorite::where('movie_id', $movie_id)->firstOrFail();
        $favorite->delete();

        return response()->json(['message' => 'Movie removed from favorites']);
    }
}
