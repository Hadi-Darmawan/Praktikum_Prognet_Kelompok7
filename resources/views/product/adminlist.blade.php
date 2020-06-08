@extends('layouts/admin')

@section('title', 'Shoppers - Product')

@section('contentTitle', 'Product Page')

@section('content')

<div class="card">
    <div class="card-body text-center">
        <p class="card-text">Add new product or see all the product category. Click the button below.</p>
        <a href="{{ url('products/create') }}" class="btn btn-outline-secondary btn-lg">Add Product</a>
        <a href="{{ url('admin/categories') }}" class="btn btn-outline-secondary btn-lg">Product Category</a>
    </div>
</div>
<div class="card-body text-center">
    <div class="row row-cols-1 row-cols-md-4 text-justify">
        @foreach($products as $product)
        <div class="col mb-4">
            <div class="card" style="height: 23rem;">
                @foreach ($product->product_image->sortByDesc('id')->take(1) as $image)
                <div class="carousel-inner my-auto" style="height: 11rem;">
                    <div class="carousel-item active" >
                        <img src="/uploads/product_images/{{$image->image_name}}" class="d-block w-100" alt="{{ $image->image_name }}">
                    </div>
                </div>
                @endforeach
                <div class="card-body">
                    <p class="card-title text-center">{{ $product->product_name }}</p>
                    <p class="text-right text-secondary">
						@foreach($categories as $category)
							@if($product->id == $category->product_id)
							{{ $category->category_name }}
							@endif
						@endforeach
					</p>	
                </div>
                <div class="card-footer text-right">
                    <a class="card-text text-right" href="{{ route('discounts.show',$product->id) }}">Discount
					</a>
					<a href="/products/delete/{{ $product->id }}" class="btn btn-danger">Delete</a>
					<a href="{{ route('products.edit',$product->id)}}" class="btn btn-primary">Detail</a>
                </div>
            </div>
        </div>
        @endforeach
    </div>
</div>
@endsection