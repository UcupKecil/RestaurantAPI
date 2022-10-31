<?php

namespace App;


use Illuminate\Database\Eloquent\Model;

class Stok extends Model
{
    protected $fillable = [
        'current_stok',
        'product_id',
        'team_id',
    ];
}
