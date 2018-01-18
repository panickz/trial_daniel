@extends('layouts.app')
@section('content')
  
            <div class="container"> 
                <div class="col-md-5">
                    <div class="product col-md-12 " style="    border: 0;">
                    
                        <center>
                            <img style="max-width:400px; width:100%; height: auto;" id="item-display" src="{{$product->image}}" alt=""></img>
                        </center>
                    </div>
                    
                </div>
                    
                <div class="col-md-7">
                    <div class="product-title">{{$product->name}}</div>
                    <div class="product-desc">{{$product->description}}</div>
                    <div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                    <hr>
                    <div class="product-price">$ {{$product->price}}</div>
                    <div class="product-stock">In Stock</div>
                    <hr>
                    <div class="btn-group cart">
                        <button type="button" class="btn btn-success buy"  data-price='{{ $product->price }}' data-id='{{ $product->id }}' data-slug='{{ $product->slug }}'>
                            Add to cart 
                        </button>
                    </div>
                </div>
            </div> 
@endsection