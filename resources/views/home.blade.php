@extends('layouts/user')

@section('title', 'Shoppers - My Page')

@section('contentTitle', 'Shoppers')

@section('content')
	<div class="position-relative overflow-hidden p-3 p-md-5 m-md-5 text-left bg-light">
		<div class="row row-cols-1 row-cols-md-4">
			@foreach($products as $products)
				<div class="col mb-4">
					<div class="card" style="height: 23rem;">
						@foreach ($products->product_image->sortByDesc('id')->take(1) as $image)
							<div class="carousel-inner my-auto" style="height: 11rem;">
								<img src="/uploads/product_images/{{$image->image_name}}" class="d-block w-100" alt="{{ $image->image_name }}">
							</div>
						@endforeach
						<div class="card-body">
							<p class="card-title text-center">{{$products->product_name}}</p>
							<p class="text-right text-secondary">
							@php
								$home = new Home;
								$harga = $home->diskon($products->discount,$products->price);
							@endphp
							</p>
						</div>
						<div class="card-footer text-right">
							@if ($harga != 0)	
								<p style="text-decoration:line-through;" class="card-text text-right">Rp {{number_format($products->price)}}</p>
								<p class="card-text text-right">Rp {{number_format($harga)}}</p>
							@else
								<p class="card-text text-right">Rp {{number_format($products->price)}}</p>
							@endif
							@if ($products->stock == 0)
								<span class="badge badge-danger mb-2">Habis</span>
							@endif
							<span class="badge badge-primary mb-2">Rating : {{$products->product_rate}}<i class="fa fa-star"></i></span>
							<a class="btn btn-outline-info text-justify" href="/product/{{$products->id}}">Detail</a>
						</div>
					</div>
				</div>
			@endforeach
		</div>
	</div>
@endsection
