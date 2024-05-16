<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ShareButtonController extends Controller
{
    public function share(){
        $shareButtons = \Share::page(
            'https://www.youtube.com/watch?v=6WZ67f9M3RE',
            'Giới trẻ Hàn Quốc đổ xô mua vàng mini khi giá tăng',
        )
        ->facebook()
        ->telegram()
        ->linkedin()
        ->whatsapp()
        ->reddit()
        ->twitter()
        ->pinterest();

        return view('post',compact('shareButtons'));


    }
}
