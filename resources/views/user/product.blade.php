@extends('layouts/user')

@section('title', 'Shoppers - Product')

@section('contentTitle', 'Shoppers')

@section('content')
	<div class="container">
		<div class="row details_row">
			<div class="col-lg-6">
				<div class="details_image">
					@foreach ($products->product_image as $jpg)
						@if($loop->iteration == 1)
							<div class="details_image_large"><img src="/uploads/product_images/{{$jpg->image_name}}" alt="">
								@php
									$home = new Home;
									$disc = $home->tampildiskon($products->discount);
								@endphp
								@if($disc!=0)
									<div style="background-color:red;" class="product_extra product_new"><a href="categories.html">-{{$disc}}%</a></div>
								@endif
							</div>
							<div class="details_image_thumbnails d-flex flex-row align-items-start justify-content-between">
						@else
							<div class="details_image_thumbnail active" data-image="/uploads/product_images/{{$jpg->image_name}}"><img src="/uploads/product_images/{{$jpg->image_name}}" alt=""></div>
						@endif
					@endforeach
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="details_content">
					<div class="details_name">{{$products->product_name}}</div>
					@php
						$home = new Home;
						$harga = $home->diskon($products->discount,$products->price);
					@endphp
					@if ($harga != 0)
						<div class="details_discount">Rp.{{number_format($products->price)}}</div>
						<div class="details_price">Rp.{{number_format($harga)}}</div>
					@else
						<div class="details_price">Rp.{{number_format($products->price)}}</div>
					@endif
					<div class="in_stock_container">
						<div class="availability">Availability:</div>
						@if ($products->stock <= 0)
							<span style="color:red;">Out of Stock!</span>
							@else
							@if ($products->stock <= 5) 
								<span style="color:red;">Hurry Up!</span>
								<p style="color:black;">Only {{$products->stock}} left!</p>
							@else
								<span>In Stock</span>
								<p style="color:black;">{{$products->stock}} left</p>
							@endif
						@endif
					</div>
					<div class="details_text">
						<p>{{$products->description}}</p>
					</div>
					<div class="product_quantity_container">
						@if (is_null(Auth::user()))
							@if ($products->stock<1)
								<button class="btn btn-primary btn-success tombol1" disabled><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Purchase</button>
								<button class="btn btn-primary btn-rounded tombol1" disabled><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Add to cart</button>
							@else
								<button class="btn btn-primary btn-success tombol1"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Purchase</button>
								<button class="btn btn-primary btn-rounded tombol1"><i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Add to cart</button>
							@endif
						@else
							@if ($products->stock<1)
								<button class="btn btn-primary btn-success" class="tombol1" disabled>
									<i class="fa fa-shopping-cart mr-2" aria-hidden="true"></i> Purchase
								</button>
								<button class="btn btn-primary btn-rounded" id="ajaxSubmit" disabled>
									<i class="fa fa-cart-plus mr-2" aria-hidden="true"></i> Add to cart
								</button>
							@else
							<table>
								<td>
									<form action="/checkout" method="POST">
									@csrf
										<input type="hidden" name="product_id" value="{{$products->id}}" id="product_id">
										@if ($harga != 0)
											<input type="hidden" name="subtotal" id="subtotal" value="{{$harga}}">
										@else
											<input type="hidden" name="subtotal" id="subtotal" value="{{$products->price}}">
										@endif
										<input type="hidden" name="weight" value="{{$products->weight}}">
										<input type="hidden" name="qty" class="qty" value="1" readonly>
										<button type="submit" class="btn btn-success" class="tombol1">
											<i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>Purchase
										</button>
									</form>
								</td>
								<td>
									<input type="hidden" value="{{$products->id}}" id="product_id">
									<input type="hidden" value="{{Auth::user()->id}}" id="user_id">
									<button class="btn btn-primary btn-rounded" id="ajaxSubmit">
										<i class="fa fa-cart-plus mr-2" aria-hidden="true"></i>Add to cart
									</button>
								</td>
							</table>
							@endif
						@endif
					</div>
				</div>
			</div>
		</div>
				<!-- Product Reviews -->
				<section id="reviews" class="pb-5 mt-4">

<hr>

<h4 class="h4-responsive dark-grey-text font-weight-bold my-5 text-center">

  <strong>Product Reviews</strong>

</h4>

<hr class="mb-5">

<!-- Main wrapper -->
<div class="comments-list text-center text-md-left">
  @if (!$products->product_review->count())
	<div class="d-flex justify-content-center">    
	  <div class="row mb-5">
		   <p><strong>Belum ada review produk.</strong></p> 
	  </div>
	</div>
  @else
	@foreach ($products->product_review as $item)
	  <!-- First row -->
	  <div class="row mb-5">
		
		<!-- Image column -->
		<!-- Image column -->

		<!-- Content column -->
		<div class="col-sm-10 col-12">

		  <a>
			{{-- @php
				dd(Auth::user()->id);
			@endphp --}}
			<h5 style="color:#333333" class="user-name font-weight-bold">{{$item->user->name}} 
			</h5>

		  </a>
			<ul class="list-unstyled mb-1">
			  <li class="comment-date font-small grey-text">
				<i class=""></i>Pada: {{$item->created_at}}</li>
			</ul>

		  <p class="dark-grey-text article">Review: {{$item->content}}</p>

		</div>
		<!-- Content column -->

	  </div>
	  <!-- First row -->
		  @if ($item->response->count())
			<!-- Balasan -->
			@foreach ($item->response as $balasan)
			<div class="row mb-5 text-right">
			  
			  <!-- Image column -->
			  <!-- Image column -->

			  <!-- Content column -->
			  <div class="col-sm-12 col-12">

				<a>

				  <h5 style="color: #333333" class="user-name font-weight-bold"><span style="margin-right:5px;" class="badge success-color">Admin</span>{{$balasan->admin->name}}</h5>

				</a>
				<!-- Rating -->
				<div class="card-data">
				  <ul class="list-unstyled mb-1">
					<li class="comment-date font-small grey-text">
					  <i class=""></i>Pada: {{$balasan->created_at}}</li>
				  </ul>
				</div>

				<p class="dark-grey-text article">Balasan: {{$balasan->content}}</p>

			  </div>
			  <!-- Content column -->

			</div>

			@endforeach
			<!-- Balasan -->

		  @endif

	@endforeach

  @endif

</div>
<!-- Main wrapper -->

</section>
<script src="{{ asset('assets/User/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{ asset('assets/User/styles/bootstrap4/popper.js')}}"></script>
<script src="{{ asset('assets/User/styles/bootstrap4/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/User/plugins/greensock/TweenMax.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/greensock/TimelineMax.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/scrollmagic/ScrollMagic.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/greensock/animation.gsap.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/greensock/ScrollToPlugin.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/OwlCarousel2-2.2.1/owl.carousel.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/Isotope/isotope.pkgd.min.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/easing/easing.js')  }}"></script>
<script src="{{ asset('assets/User/plugins/parallax-js-master/parallax.min.js')  }}"></script>
<script src="{{ asset('assets/User/js/product.js')  }}"></script>
<script>
    jQuery(document).ready(function(e){
        jQuery('#ajaxSubmit').click(function(e){
            e.preventDefault();
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            jQuery.ajax({
                url: "{{url('/tambah_cart')}}",
                method: 'post',
                data: {
                    product_id: jQuery('#product_id').val(),
                    user_id: jQuery('#user_id').val(),
                },
                success: function(result){
                    jQuery('#jumlahcart').text(result.jumlah);
                }
            });
        });

        jQuery('.tombol1').click(function(e){
                e.preventDefault();
                alert('Login terlebih dahulu');
                window.location = "{{url('/login')}}"
        });
    });
</script>
@endsection
