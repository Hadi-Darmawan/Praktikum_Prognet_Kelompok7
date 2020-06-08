@extends('layouts/admin')

@section('title', 'Shoppers - Details Order')

@section('contentTitle', 'Shoppers')

@section('content')

    <div class="row">
        <div class="col-md-12">
            <div class="card pb-5">
                <div class="container">
                    <section class="contact-section">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="card-body form">
                                    <h3 class="my-4 mb-2">Order Details</h3>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-contact-name" class="">Name</label>
                                                <input type="text" id="nama" class="form-control" value="{{$transaksi->user->name}}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-contact-email" class="">Email</label>
                                                <input type="email" id="email" class="form-control" value="{{$transaksi->user->email}}" disabled>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-contact-phone" class="">Phone Number</label>
                                                <input type="text" id="nomor-telp" class="form-control" value="{{$transaksi->telp}}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-province" class="">Provice</label>
                                                <input type="text" id="nomor-telp" class="form-control" value="{{$transaksi->province}}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-regecy" class="">City</label>    
                                                <input type="text" id="nomor-telp" class="form-control" value="{{$transaksi->regency}}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-contact-company" class="">Address</label>
                                                <input type="text" id="alamat" class="form-control" value="{{$transaksi->address}}" disabled>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="md-form mb-4">
                                                <label for="form-contact-company" class="">Courier</label>
                                                <input type="text" id="alamat" class="form-control" value="{{$transaksi->courier->courier}}" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card-body">
                                    <h3 class="my-4 mb-2">Order Summary</h3>
                                    <ul class="text-lg-left list-unstyled ml-4">
                                        <li>
                                            <h5>Status:
                                                @if ($transaksi->status == "unverified" && !is_null($transaksi->proof_of_payment))
                                                    Menunggu Konfirmasi
                                                @else
                                                    {{$transaksi->status}}
                                                @endif
                                            </h5>
                                        </li>
                                        <li>
                                            <h5>Sub Biaya: Rp {{number_format ($transaksi->sub_total)}}</h5>
                                        </li>
                                        <li>
                                            <h5 id="biaya-ongkir">Biaya Pengiriman: Rp {{number_format ($transaksi->shipping_cost)}}</h5>
                                        </li>
                                        <li>
                                            <h5>Total Biaya: Rp {{number_format ($transaksi->total)}}</h5>
                                        </li>
                                        <li>
                                            <h5>Bukti Pembayaran: 
                                                @if (is_null($transaksi->proof_of_payment))
                                                    <span class="badge badge-warning">Not yet</span>
                                                @else
                                                    <span class="badge badge-badge">Already</span>
                                                @endif
                                            </h5>
                                        </li>
                                        <li>
                                            @if($transaksi->status == "unverified" && !is_null($transaksi->proof_of_payment))
                                                    <form class="mt-3" action="/transaksi/detail/status" method="POST">
                                                        @csrf
                                                        <input type="hidden" name="id" value="{{$transaksi->id}}">
                                                        <input type="hidden" name="status" value="3">
                                                        <button type="submit" class="btn btn-success btn-md btn-block">Verify</button>
                                                    </form>
                                            @endif
                                            @if ($transaksi->status === 'verified')
                                                    <form action="/transaksi/detail/status" method="POST">
                                                        @csrf
                                                        <input type="hidden" name="id" value="{{$transaksi->id}}">
                                                        <input type="hidden" name="status" value="4">
                                                        <button type="submit" class="btn btn-primary btn-md btn-block">Deliver</button>
                                                    </form>
                                            @endif
                                            @if (is_null($transaksi->proof_of_payment))
                                            @else
                                                <button type="submit" id="tombol" class="btn btn-primary btn-md btn-block mt-3" data-toggle="modal" data-target="#modalContactForm">Proof Of Payment</button>
                                            @endif
                                            <a class="mt-3 text-decoration-none" href="/admin/transaksi">
                                                <button type="submit" id="tombol" class="btn btn-warning btn-md btn-block mt-3">All Transaction</button>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <div class="container mt-5 mb-5">
        <div class="table-responsive">
            <h3 class="text-center mb-3">Rincian Produk</h3>
            <table class="table table-hover text-center table-borderless">
                <thead>
                    <tr>
                        <th>Image</th>
                        <th>Product</th>
                        <th>Diskon</th>
                        <th>Price</th>
                        <th>QTY</th>  
                    </tr>  
                </thead>
                <tbody>
                    @foreach ($transaksi->transaction_detail as $item)
                        <tr>
                            <th scope="row">
                                @foreach ($item->product->product_image as $image)
                                    <img style="width:100px;height:100px;" src="{{asset('/uploads/product_images/'.$image->image_name)}}" alt=""class="img-fluid z-depth-0">
                                    @break
                                @endforeach
                            </th>
                            <td>{{$item->product->product_name}}</td>
                            <td>{{$item->discount}} %</td>
                            <td>Rp.{{$item->selling_price}}</td>
                            <td>{{$item->qty}}</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
    <div class="modal" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog cascading-modal" role="document">
            <div class="modal-content">
                <div class="modal-header light-blue darken-3 white-text">
                    <h4>Bukti Pembayaran</h4>
                </div>
                <div class="modal-body mb-0">
                    <div align="center" class="d-flex justify-content-center">
                        <img style="width:300px;height:300px;" src="{{url('proof_payment/'.$transaksi->proof_of_payment)}}"  id="output_image" onload="preview_image(event)" class="mb-2 mw-50 w-50 h-50 rounded">
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection