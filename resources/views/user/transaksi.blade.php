@extends('layouts/user')

@section('title', 'Shoppers - Transaction')

@section('contentTitle', 'Shoppers')

@section('content')

    <div class="container mt-5">
        <table class="table table-hover text-center">
            <thead>
                <tr>
                    <th>Deadline</th>
                    <th>ID</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Provice</th>
                    <th>Total Rp</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($transaksi as $item)
                <tr> 
                    <td>
                    @if ($item->status == 'unverified' & $item->timeout > date('Y-m-d H:i:s'))
                    @php
                        date_default_timezone_set("Asia/Makassar");
                        $date1 = new DateTime($item->timeout);
                        $date2 = new DateTime(date('Y-m-d H:i:s'));
                        $tenggat = $date1->diff($date2);
                    @endphp
                          <span class="badge badge-danger">{{$tenggat->h}} Jam, {{$tenggat->i}} Menit</span>
                     @endif
                    </td>               
                    <td>{{$item->id}}</td>
                    <td>{{$item->address}}</td>
                    <td>{{$item->regency}}</td>
                    <td>{{$item->province}}</td>
                    <td>{{number_format($item->total)}}</strong>
                    </td>
                    <td>{{$item->status}}</td>
                    <td>
                        <a href="/transaksi/detail/{{$item->id}}">Details</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <footer>
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
        <script src="{{ asset('assets/User/js/custom.js')  }}"></script>
    </footer>

@endsection
