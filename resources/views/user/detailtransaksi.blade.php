@extends('layouts/user')

@section('title', 'Shoppers - Details Transaction')

@section('contentTitle', 'Shoppers')

@section('content')

    <div class="container">
        <div class="billing checkout_section">
            <div class="section_title text-center">Billing</div>
            <div class="section_subtitle text-center">My Billing Information</div>
            <div class="checkout_form_container">
                <div class="mb-4">
                    <label for="checkout_name">Name</label>
                    <input type="text" value="{{Auth::user()->name}}" id="nama" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_email">Email</label>
                    <input type="email" value="{{Auth::user()->email}}" id="email" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_phone">Phone Number</label>
                    <input type="phone" id="checkout_phone" value="{{$transaksi->telp}}" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_province">Province</label>
                    <input type="phone" id="checkout_phone" value="{{$transaksi->province}}" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_city">City or Town</label>
                    <input type="phone" id="checkout_phone" value="{{$transaksi->regency}}" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_address">Address</label>
                    <input type="text" id="alamat" name="address" value="{{$transaksi->address}}" class="checkout_input" disabled>
                </div>
                <div class="mb-4">
                    <label for="checkout_province">Courier</label>
                    <input type="text" id="alamat" name="address" value="{{$transaksi->courier->courier}}" class="checkout_input" disabled>
                </div>
            </div>
        </div>
        <div class="order checkout_section mt-5 mb-5">
            <div class="section_title text-center">My order</div>
            <div class="section_subtitle text-center">Order Summary</div>
            <div class="order_list_container mb-5">
                <ul class="order_list">
                    @php
                        if($transaksi->status == 'unverified' && !is_null($transaksi->proof_of_payment))
                        {$transaksi->status = 'Menunggu Verifikasi';}
                    @endphp
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <div class="order_list_title">Status</div>
                        <div class="order_list_value ml-auto">
                            @if ($transaksi->status == 'success')
                                <span style="color: white;" class="badge badge-success">
                                    {{$transaksi->status}}
                                </span>
                            @elseif ($transaksi->status == 'unverified')
                                <span style="color: white;" class="badge badge-warning">
                                    {{$transaksi->status}}
                                </span>
                            @else
                                <span style="color: white;" class="badge badge-success">
                                    {{$transaksi->status}}
                                </span>
                            @endif
                        </div>
                    </li>
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <div class="order_list_title">Sub Total</div>
                        <div class="order_list_value ml-auto">
                            Rp {{number_format ($transaksi->sub_total)}}
                        </div>
                    </li>
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <div class="order_list_title">Shipping</div>
                        <div class="order_list_value ml-auto" id="biaya-ongkir">
                            Rp {{number_format ($transaksi->shipping_cost)}}
                        </div>
                    </li>
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <div class="order_list_title">Total</div>
                        <div class="order_list_value ml-auto">
                            Rp {{number_format ($transaksi->total)}}
                            <span id="total-biaya"></span>
                        </div>
                    </li>
                    <li class="d-flex flex-row align-items-center justify-content-start">
                        <div class="order_list_title">Proof Of Payment</div>
                        <div class="order_list_value ml-auto">
                            @if (is_null($transaksi->proof_of_payment))
                                <span style="color: white;" class="badge badge-danger">Not Upload</span>
                            @else
                                <span style="color: white;" class="badge badge-success">Uploaded</span>
                            @endif
                        </div>
                    </li>
                    <li class="mb-5">
                        @if ($transaksi->status == 'unverified' && is_null($transaksi->proof_of_payment))
                            <button class="btn btn-primary btn-lg btn-block mt-5" data-toggle="modal" data-target="#modalContactForm">Upload Bukti Pembayaran</button>
                            <form action="/transaksi/detail/status" method="POST">
                            @csrf
                                <input type="hidden" name="id" value="{{$transaksi->id}}">
                                <input type="hidden" name="status" value="1">
                                <button type="submit" class="btn btn-danger btn-lg btn-block mt-3" onclick="return confirm('Apa yakin ingin membatalkan pesanan ini?')">Batalkan Pesanan</button>
                            </form>
                        @else
                            @if ($transaksi->status == 'delivered')
                                <div class="d-flex flex-row bd-highlight mb-3">
                                    <form action="/transaksi/detail/status" method="POST">
                                    @csrf
                                        <input type="hidden" name="id" value="{{$transaksi->id}}">
                                        <input type="hidden" name="status" value="2">
                                        <button type="submit" class="btn btn-danger btn-lg btn-block mt-5">Pesanan Sudah Diterima</button>
                                    </form>
                                </div> 
                            @endif
                        @endif
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
      aria-hidden="true">
        <div class="modal-dialog cascading-modal" role="document">
            <div class="modal-content">
                <div class="modal-header light-blue darken-3 white-text">
                    <h4 class="">Bukti Pembayaran</h4>
                    <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body mb-0">
                    <form action="/transaksi/detail/proof" method="POST" enctype="multipart/form-data">
                    @csrf
                        <div class="form-group">
                            <div class="custom-file">
                                <input type="hidden" name="id" value="{{$transaksi->id}}">
                                <input type="file" accept="image/*" name="file" id="product_image" class="custom-file-input" onchange="preview_image(event)">
                                <label class="custom-file-label" for="product_image">Masukan bukti pembayaran</label>
                                    <script>
                                    $(".custom-file-input").on("change", function() {
                                    var fileName = $(this).val().split("\\").pop();
                                    $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
                                    });
                                    </script>
                            </div>
                        </div>
                        <div class="text-center mt-1-half">
                            <button type="submit" class="btn btn-primary btn-lg btn-block mb-2">Send Image</button>
                        </div>
                    </form>
                </div>
                <div class="d-flex justify-content-center">
                    <img src=""  id="output_image" class="mb-2 mw-50 w-50 h-50 rounded">
                </div>
            </div>
        </div>
    </div>
    <!-- Modal: Contact form -->

    <!-- Modal: Tambah Review -->
    <div class="container ganti">
    <section class="section my-5 pb-5">
      <!-- Shopping Cart table -->
      <div style="color:#333333;" class="table-responsive">
        <h1 align="center">Rincian Produk</h1>
        <table class="table product-table table-cart-v-1">
          <!-- Table head -->
          <thead>
            <tr>
              <th></th>
              <th class="font-weight-bold">
                <strong>Product</strong>
              </th>
              <th></th>
              <th class="font-weight-bold">
                <strong>Diskon</strong>
              </th>
              <th class="font-weight-bold">
                <strong>Price</strong>
              </th>
              <th class="font-weight-bold">

                <strong>QTY</strong>

              </th>  
              <th></th>
              @if ($transaksi->status == 'success')
              <th class="font-weight-bold">
                <strong>Berikan Review</strong>
              </th> 
              @endif
            </tr>

          </thead>
          <!-- Table head -->

          <!-- Table body -->
          <tbody>

            <!-- First row -->
            @foreach ($transaksi->transaction_detail as $item)
            <tr>
              <th scope="row">
                  @foreach ($item->product->product_image as $image)
                  
                      <img style="width:50px; height:50px;" src="{{asset('/uploads/product_images/'.$image->image_name)}}" alt="" class="img-fluid z-depth-0">
                      @break
                  @endforeach
              </th>
              <td>
                <h5 class="mt-3">
                  <input type="hidden" name="id" id="product_id{{$loop->iteration-1}}" value="{{$item->product->id}}">
                  <strong>{{$item->product->product_name}}</strong>
                </h5>
              </td>
              <td></td>
              <td>{{$item->discount}}%</td>
              <td>Rp.{{$item->selling_price}}</td>
              <td class="text-center text-md-left">

                <span>{{$item->qty}} </span>

              </td>
              <td></td>
              @if ($transaksi->status == 'success')
              <td>
                  @php
                      $status = 0;
                  @endphp
                  @foreach ($review as $pr)
                       @php
                           if($item->product->id == $pr->product_id){
                              $status = $status + 1;
                           }else{
                              $status = $status;
                           }
                       @endphp
                  @endforeach
                  @if ($status != 0)
                      
                      <button class="btn btn-sm btn-success tambah-review" data-toggle="modal" data-target="#modalTambahReview" disabled>Review telah diberikan</button>
                      
                  @else
                      <button class="btn btn-sm btn-success tambah-review" data-toggle="modal" data-target="#modalTambahReview">+Tambah Review</button>
                      
                  @endif
              </td>    
              @endif
            </tr>
            @endforeach

          </tbody>
          <!-- Table body -->

        </table>

      </div>
      <!-- Shopping Cart table -->

    </section>
  </div>
  <!-- Main Container -->

    <!-- Modal: Contact form -->
    <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
      aria-hidden="true">
      <div class="modal-dialog cascading-modal" role="document">
        <!-- Content -->
        <div class="modal-content">

          <!-- Header -->
          <div class="modal-header light-blue darken-3 white-text">
            <h4 class="">Bukti Pembayaran</h4>
            <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

          <!-- Body -->
          <div class="modal-body mb-0">
            <form action="/transaksi/detail/proof" method="POST" enctype="multipart/form-data">
              @csrf
            <div class="md-form form-sm">
              Masukkan Bukti Pembayaran
              <input type="hidden" name="id" value="{{$transaksi->id}}">
              <input type="file" name="file" id="form19" class="form-control form-control-sm" accept=".jpeg,.jpg,.png,.gif" onchange="preview_image(event)" required>
            </div>
            <br><br>
            <div class="text-center mt-1-half">
              <button type="submit" class="btn btn-info mb-2">Send</button>
            </div>
            </form>
          </div>
          <div class="d-flex justify-content-center">
            <img src=""  id="output_image" class="mb-2 mw-50 w-50 h-50 rounded">
          </div>
        </div>
        <!-- Content -->
      </div>
    </div>
    <!-- Modal: Contact form -->

    <!-- Modal: Tambah Review -->
    <div class="modal fade" id="modalTambahReview" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
    aria-hidden="true">
    <div class="modal-dialog cascading-modal" role="document">
      <!-- Content -->
      <div class="modal-content">

        <!-- Header -->
        <div class="modal-header light-blue darken-3 white-text">
          <h4 class="">Tambah Rating dan Review Produk</h4>
          <button type="button" class="close waves-effect waves-light" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <!-- Body -->
        <div class="modal-body mb-0">
            <input type="hidden" name="product_id" id="product_id" value="">
            <input type="hidden" name="user_id" id="user_id" value="{{Auth::user()->id}}">
            <input id="signup-token" name="_token" type="hidden" value="{{csrf_token()}}">
          <div class="md-form form-sm">
            Masukkan Rate untuk Produk
            <select name="rate" id="rate" class="form-control form-control-sm">
              @for ($i = 0; $i < 6; $i++)
              <option value="{{$i}}">{{$i}}</option>
              @endfor
            </select>
          </div>
          <br><br>
          <div class="md-form form-sm">
            <textarea type="text" id="content" class="md-textarea form-control form-control-sm" rows="3" required></textarea>
          </div>
          <br><br>
          <div class="text-center mt-1-half">
            <button type="submit" class="btn btn-info mb-2" id="kirim-review">Send</button>
          </div>
        </div>
      </div>
      <!-- Content -->
    </div>
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
       $(".tambah-review").click(function(e){
        var index = $(".tambah-review").index(this);
        var product_id = $("#product_id"+index).val();
        $("#product_id").val(product_id);
      });

      $("#kirim-review").click(function(e){
        jQuery.ajax({
              url: "{{url('/transaksi/detail/review')}}",
              method: 'post',
              data: {
                  _token: $('#signup-token').val(),
                  product_id: $("#product_id").val(),
                  user_id: $("#user_id").val(),
                  rate: $("#rate").val(),
                  content: $("#content").val(),
              },
              success: function(result){
                $('#modalTambahReview').modal('hide');
                alert('Berhasil Menambah Review');
                location.reload();
              }
          });
      });
  
        
  });
</script>
<script type="text/javascript">
  function preview_image(event){
    let reader = new FileReader();
    var fileExtention = '';
    reader.onload = function(){
      let output = document.getElementById('output_image');
      output.src = reader.result;
      fileExtention = output.src.split('/');
      fileExtention = fileExtention[1];
      fileExtention = fileExtention.split(';');
      console.log(fileExtention[0]);
    }
    if(event.target.files[0]){
      reader.readAsDataURL(event.target.files[0]);
    }
  }
</script>

@endsection
