@extends('layouts/user')

@section('title', 'Shoppers - Product Checkout')

@section('contentTitle', 'Shoppers')

@section('content')

<div class="super_container">
    <div class="container">
        <form action="/beli" method="post" id="checkout_form" class="checkout_form">
        @csrf
            <div class="billing checkout_section">
                <div class="section_title">Your Order</div>
                <div class="section_subtitle">Details Order Information</div>
                <div class="checkout_form_container">
                    <div class="mb-3">
                        <!-- Name -->
                        <label for="checkout_name">Name</label>
                        <input type="text" value="{{Auth::user()->name}}" id="nama" class="checkout_input" disabled>
                    </div>
                    <div class="mb-3">
                        <!-- Email -->
                        <label for="checkout_email">Email</label>
                        <input type="email" value="{{Auth::user()->email}}" id="email" class="checkout_input" disabled>
                    </div>
                    <div class="mb-3">
                        <!-- Email -->
                        <label for="checkout_email">Sub Total</label>
                        <input value="Rp {{$subtotal}}" id="email" class="checkout_input" disabled>
                    </div>
                    <div class="mb-3">
                        <!-- Phone no -->
                        <label for="checkout_phone">Phone Number</label>
                        <input name="no_telp" type="text" id="nomor-telp" class="checkout_input" required="required">
                    </div>
                    <div class="mb-3">
                        <label for="checkout_province">Province</label>
                        <select name="province" id="provinsi" class="dropdown_item_select checkout_input cekongkir" require="required">
                            <option>Province</option>
                            @foreach ($provinsi as $prov)
                            <option value="{{$prov->id}}">{{$prov->title}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="mb-3">
                        <!-- City / Town -->
                        <label for="checkout_city">City or Town</label>
                        <select name="regency" id="kota" class="dropdown_item_select checkout_input cekongkir" require="required">
                            <option value=""></option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <!-- Address -->
                        <label for="checkout_address">Address</label>
                        <input type="text" id="alamat" name="address" class="checkout_input" required="required">
                    </div>
                    <div class="mb-3">
                        <label for="checkout_province">Courier</label>
                        <select name="courier" id="kurir" class="dropdown_item_select checkout_input cekongkir">
                            <option>Select</option>
                            @foreach ($kurir as $k)
                                <option value="{{$k->id}}">{{$k->courier}}</option>
                            @endforeach
                        </select>
                    </div>
                        <input type="hidden" name="shipping_cost" value="7000">
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <input type="hidden" name="sub_total" value="{{$subtotal}}">
                        <input type="hidden" name="total" id="totalbiaya">
                        <!-- <input type="hidden" name="shipping_cost" id="ongkir"> -->
                        <input type="hidden" name="user_id" value="{{Auth::user()->id}}">
                        <input type="hidden" name="product_id" value="{{$product_id}}">
                        <input type="hidden" name="qty" value="{{$qty}}">
                        <button type="submit" class="btn btn-primary btn-lg btn-block mt-5">Buy and Process</button>
                    </li>
                </div>
            </div>
        </form>
    </div>
    <div class="container ganti">
        <section class="section my-5 pb-5">
            <div style="color:#333333;" class="table-responsive">
                <h1 align="center" class="mt-5 pt-5">Rincian Produk</h1>
                <table class="table table-hover mt-5 text-center">
                    <thead>
                        <tr>
                            <th scope="col">Image</th>
                            <th scope="col">Product</th>
                            <th scope="col">Price</th>
                            <th scope="col">QTY</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cart as $item)
                            <tr>
                                @if (is_null($item->product))
                                    <th scope="row">
                                        <input type="hidden" class="id_cart{{$loop->iteration-1}}" value="{{$item->id}}">
                                        <input type="hidden" id="user_id" value="{{$item->user_id}}">
                                        <input type="hidden" class="stock{{$loop->iteration-1}}" value="{{$item->stock}}">
                                        @foreach ($item->product_image as $image)
                                            <img style="width:50px; height:50px;" src="{{asset('/uploads/product_images/'.$image->image_name)}}" alt=""
                                            class="img-fluid z-depth-0">
                                            @break
                                        @endforeach
                                    </th>
                                    <td>{{$item->product_name}}</td>
                                    @php
                                        $home = new Home;
                                        $hasil = $home->diskon($item->discount,$item->price);
                                    @endphp
                                    @if ($hasil != 0)
                                        <td> Rp {{$hasil}}</td>
                                    @else
                                        <td>Rp {{$item->price}}</d>
                                    @endif
                                    <td class="text-center text-md-left">{{$qty}}</td>
                                @else
                                <th scope="row">
                                    <input type="hidden" class="id_cart{{$loop->iteration-1}}" value="{{$item->id}}">
                                    <input type="hidden" id="user_id" value="{{$item->user_id}}">
                                    <input type="hidden" class="stock{{$loop->iteration-1}}" value="{{$item->product->stock}}">
                                    @foreach ($item->product->product_image as $image)
                                        <img style="width:50px; height:50px;" src="{{asset('/uploads/product_images/'.$image->image_name)}}" alt="" class="img-fluid z-depth-0">
                                        @break
                                    @endforeach
                                </th>
                                <td>{{$item->product->product_name}}</td>
                                @php
                                    $home = new Home;
                                    $hasil = $home->diskon($item->product->discount,$item->product->price);
                                @endphp
                                @if ($hasil != 0)
                                    <td>Rp <span class="float-lef grey-text price{{$loop->iteration-1}}">{{$hasil}}</li>
                                        Rp <span class="float-lef grey-text"><small><s>{{$item->product->price}}</s></small></span></td>
                                @else
                                    <td>Rp {{$item->product->price}}</td>
                                @endif
                                    <td>{{$item->qty}}</td>
                                @endif

                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </section>
        <input id="signup-token" name="_token" type="hidden" value="{{csrf_token()}}">
        <input type="hidden" value="{{$weight}}" id="weight">
    </div>
</div>

<script src="{{ asset ('assets/User/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{ asset ('assets/User/styles/bootstrap4/popper.js')}}"></script>
<script src="{{ asset ('assets/User/styles/bootstrap4/bootstrap.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/greensock/TweenMax.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/greensock/TimelineMax.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/scrollmagic/ScrollMagic.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/greensock/animation.gsap.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/greensock/ScrollToPlugin.min.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/easing/easing.js')}}"></script>
<script src="{{ asset ('assets/User/plugins/parallax-js-master/parallax.min.js')}}"></script>
<script src="{{ asset ('assets/User/js/checkout.js')}}"></script>
<script>
    $(document).ready(function(e){
        $('#provinsi').change(function(e){
            var id_provinsi = $('#provinsi').val()
            if(id_provinsi){
                jQuery.ajax({
                    url: '/kota/'+id_provinsi,
                    type: "GET",
                    dataType: "json",
                    success:function(data){
                        $('#kota').empty();
                        $.each(data, function(key,value){
                            $('#kota').append('<option value="'+key+'">'+value+'</option>');
                        });
                    },
                });
            }else{
                $('#kota').empty();
            }
        });

        $('.cekongkir').change(function(e){
            var kurir = $('#kurir').val();
            var provinsi = $('#provinsi').val();
            var kota = $('#kota').val();
            var berat = parseInt($('#weight').val());
            if(provinsi>0 && kurir>0){
                jQuery.ajax({
                    url: "{{url('/ongkir')}}",
                    method: 'POST',
                    data: {
                        _token: $('#signup-token').val(),
                        destination: kota,
                        weight: berat,
                        courier: kurir,
                        prov: provinsi, 
                    },
                    success: function(result){
                        console.log(result.success);
                        console.log(result.hasil["etd"]);
                        $('#biaya-ongkir').text('Biaya Pengiriman: Rp.'+result.hasil["value"]);
                        $('#ongkir').val(result.hasil["value"]);
                        $('#biaya-ongkir').append('<input type="hidden" id="biaya-ongkir" value="'+result.hasil["value"]+'">');
                        $('#biaya-ongkir').append('<li>Estimasi sampai: '+result.hasil["etd"]+'Hari</li>');
                        $('#total-biaya').text({$subtotal}+result.hasil["value"]);
                        $('#totalbiaya').val({$subtotal}+result.hasil["value"]);
                    }
                });
                // console.log('wrong');
                // console.log('kota: '+kota+' provinsi: '+provinsi+' Kurir: '+kurir)
            }else{
                console.log('wrong');
                console.log('provinsi: '+provinsi+' Kurir: '+kurir)
            }

        });

        $('#beli').click(function(e){
            var kurir = $('#kurir').val();
            var provinsi = $('#provinsi').val();
            var kota = $('#kota').val();
            var alamat = $('#alamat').val();
            var totals = parseInt($('#total-biaya').text());
            var subtotal = parseInt('{{$subtotal}}');
            var ongkir = $('#biaya-ongkir').val();
            var user = $('#user_id').val();
            console.log(totals)
            if(totals==0){
            alert('Tolong Lengkapi Masukan Data');
            return false;
            }
        });
    });
</script>

@endsection
