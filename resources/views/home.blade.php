@extends('layouts.app')
@section('content')
<div class="layout">
            <section class="container">
           
                <ul class="grid">
                    @foreach ($products as $product)
                        <li class="grid-tile">
                            <div class="item">
                                <a href='/product/{{ $product->id }}/{{ $product->slug }}'><div class="item-img" style="background-image: url('{{ $product->image }}');"></div></a>
                                <div class="item-pnl">
                                    <div class="pnl-wrapper">
                                        <div class="pnl-description">
                                            <span class="pnl-label">{{ $product->name }}</span>
                                            <span class="pnl-price">${{ $product->price }}</span>
                                        </div>
                                        <div class="pnl-favorites">
                                            <div class="pnl-ic-wrapper">
                                                <span class="pnl-ic"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 32 32" style="enable-background:new 0 0 32 32;" xml:space="preserve"><path d="M22.6,6.5c-2.9,0-5.4,1.7-6.6,4.1c-1.2-2.4-3.7-4.1-6.6-4.1C5.3,6.5,2,9.8,2,13.9C2,23.7,15.8,29,15.8,29S30,23.6,30,13.9C30,9.8,26.7,6.5,22.6,6.5L22.6,6.5z"></path></svg></span>
                                            </div>
                                        </div>
                                        <div class="pnl-tocart buy" data-price='{{ $product->price }}' data-id='{{ $product->id }}' data-slug='{{ $product->slug }}'>
                                            <div class="pnl-ic-wrapper">
                                                <span class="pnl-ic"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 32 32" style="enable-background:new 0 0 32 32;" xml:space="preserve"><g><path d="M25.4,29H6.6c-1.7,0-3-1.4-2.8-2.9l1.9-13.8C5.9,11,6.6,10,8,10h16c1.4,0,2.1,1,2.3,2.3l1.9,13.8 C28.4,27.6,27.1,29,25.4,29z"></path><path d="M10.6,12.7V8.4C10.6,5.4,13,3,16,3h0c3,0,5.4,2.4,5.4,5.4v4.3"></path></g></svg></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    @endforeach
                </ul>
            </section>
        </div>
@endsection