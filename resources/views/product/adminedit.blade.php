@extends('layouts/admin')

@section('title', 'Shoppers - Product')

@section('contentTitle', 'Product Page')

@section('content')

<div class="card">
    <div class="card-body text-center">
        See all product that had posted
        <a href="{{ url('admin/products') }}" class="btn btn-outline-secondary btn-lg btn-block">All Product</a>
    </div>
</div>
<div class="card p-3 mb-5 pb-3 mt-4">
    <div class="card-body text-center">
        <h4 class="card-title">Product Detail</h4>
    </div>
    <form class="mt-2" method="post" action="{{ route('products.update', $products->id) }}" enctype="multipart/form-data">
        @method('patch')
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder" for="product_name">Product Name</label>
            <input type="text" class="form-control @error('product_name') is-invalid @enderror" id="product_name" name="product_name" value="{{ $products->product_name }}">
            @error('product_name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
            <label class="font-weight-bolder" for="description">Product Description</label>
            <textarea class="form-control @error('description') is-invalid @enderror" id="description" name="description" style="resize:none;height:120px;">{{$products->description}}</textarea>
            @error('description')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
            <label class="control-label">Kategori</label>
            <select name="category_id[]" class="selectpicker form-control" multiple data-live-search="true"  multiple="multiple" required>
                @foreach ($category as $categories)
                    <option
                    @foreach ($categoryDetail as $dataDetail)
                        @if ($dataDetail->category_id == $categories->id)
                            selected="selected"
                        @endif
                    @endforeach
                    value="{{ $categories->id }}">{{ $categories->category_name }}</option>
                @endforeach
            </select>
        </div>
        <div class="card px-2 my-4">
            <label class="mt-2 ml-2 font-weight-bolder text-center">Product Images</label>
            <p class="text-secondary text-decoration-none text-center">Manage the <a class="text-decoration-none" href="">product images</a></p>
            <div class="card-body">
                <div class="row row-cols-1 row-cols-md-4">
                    @foreach($products->product_image->sortByDesc('id') as $image)
                            <div class="carousel-inner" style="height: 9rem;">
                                <div class="carousel-item active p-2">
                                    <img src="/uploads/product_images/{{$image->image_name}}" class="d-block w-100">
                                </div>
                            </div>
                    @endforeach
                </div>
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" accept="image/*" name="image_name[]" id="product_image" class="custom-file-input @error('image_name') is-invalid @enderror" multiple="true">
                    <label class="custom-file-label" for="product_image">Add another product image</label>
                    @error('image_name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                    <script>
                        $(".custom-file-input").on("change", function() {
                        var fileName = $(this).val().split("\\").pop();
                        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
                        });
                    </script>
                </div>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label class="font-weight-bolder" for="product_price">Product Price</label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Rp</span>
                    </div>
                    <input type="text" id="product_price" class="form-control text-right @error('price') is-invalid @enderror" name="price" placeholder="Enter the product price" value="{{ $products->price }}">
                    <div class="input-group-append">
                        <span class="input-group-text">,-</span>
                    </div>
                    @error('price')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bolder" for="product_price">Product Weight</label>
                <div class="input-group mb-3">
                    <input type="text" id="product_price" class="form-control text-right @error('weight') is-invalid @enderror" name="weight" placeholder="Enter the product weight" value="{{ $products->weight }}">
                    <div class="input-group-append">
                        <span class="input-group-text">Kg</span>
                    </div>
                    @error('weight')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
            <div class="form-group col-md-3">
                <label class="font-weight-bolder" for="product_price">Product Stock</label>
                <div class="input-group mb-3">
                    <input type="text" id="product_price" class="form-control text-right @error('stock') is-invalid @enderror" name="stock" placeholder="Enter the product stock" value="{{ $products->stock }}">
                    <div class="input-group-append">
                        <span class="input-group-text">Pcs</span>
                    </div>
                    @error('stock')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                    @enderror
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-primary btn-lg btn-block">Save change</button>
    </form>
</div>

@endsection