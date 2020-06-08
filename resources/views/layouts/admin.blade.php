<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.6">
    <title>@yield('title')</title>

    <!-- Bootstrap core CSS -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"><\/script>')</script>
    <script src="https://getbootstrap.com/docs/4.4/dist/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link href="{{ asset('assets/Admin/css/style.css')}}" rel="stylesheet" type="text/css" media="all"/>
    <script src="{{ asset('assets/Admin/js/jquery-3.2.1.min.js')}}"></script>
    <link href="{{ asset('assets/Admin/css/font-awesome.css')}}" rel="stylesheet"> 

    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            height: 100vh;
            margin: 0;
        }
        strong{
            font-size: 27px;
        }
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
            font-size: 3.5rem;
            }
        }
        .feather {
            width: 16px;
            height: 16px;
            vertical-align: text-bottom;
        }

        /*
        * Sidebar
        */
        .sidebar {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            z-index: 100; /* Behind the navbar */
            padding: 30px 0 0; /* Height of navbar */
            box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
        }
        .sidebar-sticky {
            position: relative;
            top: 0;
            height: calc(100vh - 48px);
            padding-top: 27px;
            overflow-x: hidden;
            overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
        }

        @supports ((position: -webkit-sticky) or (position: sticky)) {
            .sidebar-sticky {
                position: -webkit-sticky;
                position: sticky;
            }
        }
        .sidebar .nav-link {
            font-weight: 500;
            color: #333;
        }

        .sidebar .nav-link .feather {
            margin-right: 4px;
            color: #999;
        }

        .sidebar .nav-link.active {
            color: #007bff;
        }

        .sidebar .nav-link:hover .feather,
        .sidebar .nav-link.active .feather {
            color: inherit;
        }

        .sidebar-heading {
            font-size: .75rem;
            text-transform: uppercase;
        }
    </style>
    
    <!-- Custom styles for this template -->
    <link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.4/examples/album/album.css" rel="stylesheet">
</head>

<body>
    <header>
        <div class="collapse bg-dark" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-md-7 py-4">
                        <h4 class="text-white">Aministrator Web Page</h4>
                        <p class="text-muted text-justify">Welcome to administrator web pages. This website give you full control for your Shoppers account's. See full information and give us your contribution. Shoppers reading everywhere and everytime</p>
                    </div>
                    <div class="col-sm-4 offset-md-1 py-4 text-right">
                        <h4 class="text-white">My Admin Dashboard</h4>
                        <ul class="nav flex-column justify-content-end">
                            <li><a class="text-decoration-none" href="" class="text-white">My Profile</a></li>
                            <li><a class="text-decoration-none" href="{{ url('/admin/logout') }}" class="text-white">Logout</a></li>
                            <li><a class="text-decoration-none" href="" class="text-white">New Account</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container d-flex justify-content-between">
                <a href="{{ url('/admin') }}" class="navbar-brand d-flex align-items-center">
                    <strong>Shoppers</strong>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                    <a class="text-decoration-none mr-5 text-light" href="#">{{ Auth::user()->name }}</a>
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </header>
    <div class="container-fluid">
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar-sticky">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/admin') }}">
                            <span data-feather="home"></span>
                            Home <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/admin/transaksi') }}">
                            <span data-feather="file"></span>
                            Orders
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/admin/products') }}">
                            <span data-feather="shopping-cart"></span>
                            Products
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <span data-feather="users"></span>
                            Customers
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="{{ url('/admin/couriers') }}">
                            <span data-feather="truck"></span>
                            Couriers
                            </a>
                        </li>
                    </ul>

                    <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-5 mb-1 text-muted" >
                        <span>Saved reports</span>
                    </h6>
                    <ul class="nav flex-column mb-2 mt-3">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Current month
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Last quarter
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Last year
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                            <span data-feather="file-text"></span>
                            Product Review
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4 mb-5">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">@yield('contentTitle')</h1>
                    <div class="btn-group mb-2 mb-md-0">
                        <div class="btn-group mr-2">
                            <a href="#" class="btn btn-sm btn-outline-secondary">Share</a>
                            <a href="#" class="btn btn-sm btn-outline-secondary">Export</a>
                        </div>
                        <div class="dropdown">
                        @php
                            $id = 1;
                            $admin = App\Admin::find(1);
                            $notif_count = $admin->unreadNotifications->count();
                            $notifications = DB::table('admin_notifications')->where('notifiable_id',$id)->where('read_at',NULL)->orderBy('created_at','desc')->get();
                        @endphp
                            <button type="button" class="btn btn-sm btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                                <span class="badge blue"> {{$notif_count}} </span>
                                Notification
                            </button>
                            <div class="dropdown-menu dropdown-menu-right">
                                @foreach($notifications as $notif)
                                    <a class="dropdown-item" href="{!!$notif->data!!}">{!!$notif->data!!}</a>
                                @endforeach
                                <a class="btn btn-block" href="/admin/marknotifadmin">Mark as Read</a>
                            </div>
                        </div>
                    </div>
                </div>
                @yield('content')
            </main>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.4/examples/dashboard/dashboard.js"></script>
    <script src="{{ asset('assets/Admin/js/scripts.js')}}"></script>
    
    <script>
        $(document).ready(function(e){
            $(".status").click(function(e){
                var index = $(".status").index(this);
                var myStatus = '';
                console.log(index);
                switch(index){
                case 0:
                    myStatus = 'all';
                    break;
                case 1:
                    myStatus = 'unverified';
                    break;
                case 2:
                    myStatus = 'waiting';
                    break;
                case 3:
                    myStatus = 'verified';
                    break;
                case 4:
                    myStatus = 'delivered';
                    break;
                case 5:
                    myStatus = 'success';
                    break;
                case 6:
                    myStatus = 'canceled';
                    break;
    
                }
    
                console.log(myStatus);
                jQuery.ajax({
                    url: "{{url('/admin/transaksi/sort')}}",
                    method: 'post',
                    data: {
                        _token: $('#signup-token').val(),
                        status: myStatus,
                    },
                    success: function(result){
                        $('.ganti').html(result.hasil);
                    }
                });
            });
        });
    </script>

    <script>
        window.onload = function () {
            var options = {
                axisX: {
                    interval:1,
                    labelMaxWidth: 180,           
                    labelAngle: -45,
                    labelFontFamily:"Times New Roman"
                },
                title: {
                    text: "Grafik Jumlah Transaksi Perbulan {{date('Y')}}"              
                },
                data: [
                    {
                        type: "column",
                        dataPoints: [
                            { label: "Januari",  y: parseInt($('#bulan1').val())},
                            { label: "Februari", y: parseInt($('#bulan2').val())},
                            { label: "Maret", y: parseInt($('#bulan3').val())},
                            { label: "April", y: parseInt($('#bulan4').val())},
                            { label: "Mei",  y: parseInt($('#bulan5').val())},
                            { label: "Juni",  y: parseInt($('#bulan6').val())},
                            { label: "Juli",  y: parseInt($('#bulan7').val())},
                            { label: "Agustus", y: parseInt($('#bulan8').val())},
                            { label: "September", y: parseInt($('#bulan9').val())},
                            { label: "Oktober",  y: parseInt($('#bulan10').val())},
                            { label: "November",  y: parseInt($('#bulan11').val())},
                            { label: "Desember",  y: parseInt($('#bulan12').val())},
                        ]
                    }
                ]
            };
            $("#chartContainer").CanvasJSChart(options);
        }
    </script>    

    <script>
        function formatRupiah(angka, prefix){
            var number_string = angka.toString(),
            split   		= number_string.split(','),
            sisa     		= split[0].length % 3,
            rupiah     		= split[0].substr(0, sisa),
            ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);
            if(ribuan){ // tambahkan titik jika yang di input sudah menjadi angka ribuan
                separator = sisa ? '.' : '';
                rupiah += separator + ribuan.join('.');
            }
            rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
            return prefix == undefined ? rupiah : (rupiah ? 'Rp ' + rupiah : '');
        }
        function creteChart(tahun, ttlTahun, judul = ''){
            var options = {
                axisX: {
                    interval:1,
                    labelMaxWidth: 180,           
                    labelAngle: -45,
                    labelFontFamily:"Times New Roman"
                },
                title: {
                    text: "Grafik Jumlah Transaksi "+judul+" Perbulan "+ttlTahun              
                },
                data:[              
                    {
                        type: "column",
                        dataPoints: [
                            { label: "Januari",  y: tahun[1]},
                            { label: "Februari", y: tahun[2]},
                            { label: "Maret", y: tahun[3]},
                            { label: "April", y: tahun[4]},
                            { label: "Mei",  y: tahun[5]},
                            { label: "Juni",  y: tahun[6]},
                            { label: "Juli",  y: tahun[7]},
                            { label: "Agustus", y: tahun[8]},
                            { label: "September", y: tahun[9]},
                            { label: "Oktober",  y: tahun[10]},
                            { label: "November",  y: tahun[11]},
                            { label: "Desember",  y: tahun[12]},
                            
                        ]
                    }
                ]
            };               
            $("#chartContainer").CanvasJSChart(options);
        }
        jQuery(document).ready(function(e){
          console.log($('#bulan1').val())
          jQuery('#bulan').change(function(e){
                jQuery.ajax({
                    url: "{{url('/report-bulan')}}",
                    method: 'post',
                    data: {
                        _token: $('#signup-token').val(),
                        bulan: $('#bulan').val(),
                        tahun: $('#tahun').val(),
                    },
                    success: function(result){
                        $('#total').text(result.data['total']);
                        $('#unverified').text(result.data['unverified']);
                        $('#expired').text(result.data['expired']);
                        $('#canceled').text(result.data['canceled']);
                        $('#verified').text(result.data['verified']);
                        $('#delivered').text(result.data['delivered']);
                        $('#success').text(result.data['success']);
                        var uang = formatRupiah(result.data['harga'],'Rp ');
                        $('#harga').text(uang);
                    }
                });
          });
            jQuery('#tahun').change(function(e){
                jQuery.ajax({
                    url: "{{url('/report-tahun')}}",
                    method: 'post',
                    data: {
                        _token: $('#signup-token').val(),
                        bulan: $('#bulan').val(),
                        tahun: $('#tahun').val(),
                    },
                    success: function(result){
                        $('#total').text(result.data_bulan['total']);
                        $('#unverified').text(result.data_bulan['unverified']);
                        $('#expired').text(result.data_bulan['expired']);
                        $('#canceled').text(result.data_bulan['canceled']);
                        $('#verified').text(result.data_bulan['verified']);
                        $('#delivered').text(result.data_bulan['delivered']);
                        $('#success').text(result.data_bulan['success']);
                        var uang = formatRupiah(result.data_bulan['harga'],'Rp ');
                        $('#harga').text(uang);
                        $('#total-tahun').text(result.data['total']);
                        $('#unverified-tahun').text(result.data['unverified']);
                        $('#expired-tahun').text(result.data['expired']);
                        $('#canceled-tahun').text(result.data['canceled']);
                        $('#verified-tahun').text(result.data['verified']);
                        $('#delivered-tahun').text(result.data['delivered']);
                        $('#success-tahun').text(result.data['success']);
                        var uang_tahun = formatRupiah(result.data['harga'],'Rp ');
                        $('#harga-tahun').text(uang_tahun);
                        creteChart(result.tahun, $('#tahun').val());
                    }
                });
            });
            $(".status").click(function(e){
                var index = $(".status").index(this);
                var myStatus = '';
                switch(index){
                    case 0:
                        myStatus = 'all';
                        break;
                    case 1:
                        myStatus = 'unverified';
                        break;
                    case 2:
                        myStatus = 'expired';
                        break;
                    case 3:
                        myStatus = 'verified';
                        break;
                    case 4:
                        myStatus = 'delivered';
                        break;
                    case 5:
                        myStatus = 'success';
                        break;
                    case 6:
                        myStatus = 'canceled';
                        break;

                }
                jQuery.ajax({
                    url: "{{url('/grafik')}}",
                    method: 'post',
                    data: {
                        _token: $('#signup-token').val(),
                        status: myStatus,
                        tahun: $('#tahun').val(),
                    },
                    success: function(result){
                        creteChart(result.grafik, $('#tahun').val(), myStatus);
                    }
                });
            });
        });
    </script>

    <nav class="navbar fixed-bottom navbar-expand-sm navbar-dark bg-dark mt-5">
        <div class="container">
            <p class="text-light mt-3">&copy; Kelompok 7 Praktikum Pemrograman Internet 2020</p>
            <button type="button" class="btn btn-secondary">
                <a href="#" class="text-light text-decoration-none">Back to top</a>
            </button>
        </div>
    </nav>
</body>
</html>