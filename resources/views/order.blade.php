@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-12">
        @if(count($orders) > 0)
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                         <th> </th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    {{--*/ $var = 0 /*--}}
                    @foreach ($orders as $order)
                        {{--*/ $var = $var + $order->price /*--}}
                        <tr>
                            <td class="col-sm-12 col-md-12">
                            <div class="media">
                                <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                                <div class="media-body" style="    padding: 35px;">
                                    <h4 class="media-heading"><a href="#">{{ $order->name }}</a></h4>
                                </div>
                            </div></td>
                            <td class="col-sm-1 col-md-1" style="text-align: center">
                                1
                            </td>
                            <td class="col-sm-1 col-md-1 text-center"><strong>${{ $order->price }}</strong></td>

                            <td class="col-sm-1 col-md-1" style="text-align: center">
                                
                            </td>
                                                        <td class="col-sm-1 col-md-1">
                            <button type="button" class="btn btn-danger removePdr" data-id='{{ $order->id }}' data-slug='{{ $order->slug }}'>
                                <span class="glyphicon glyphicon-remove"></span> Remove
                            </button></td>
                        </tr>
                    @endforeach
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${{ $var }}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <a href='/'><span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping </a>
                        </button></td>
                        <td>
                         @if (Auth::guest())
                            <a style='margin-top:4px;' href="{{ url('/login') }}">Login</a>
                        @else
                            <button type="button" class="btn btn-success">
                                <a href='/cart/thank_you' style="color:white;">Checkout <span class="glyphicon glyphicon-play"></span></a>
                            </button>
                        @endif
                        </td>
                    </tr>
                </tbody>
            </table>
            @else
                <div>No products added.</div>
            @endif
        </div>
    </div>
</div>
@endsection
