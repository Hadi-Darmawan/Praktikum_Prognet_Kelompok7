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
        <h4 class="card-title">Add the new product</h4>
    </div>
      
    <form class="mt-2" method="post" action="{{ route('products.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label class="font-weight-bolder" for="product_name">Product Name</label>
            <input type="text" class="form-control @error('product_name') is-invalid @enderror" id="product_name" name="product_name" placeholder="Enter the product name">
            @error('product_name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
            <label class="font-weight-bolder" for="product_kategory">Product Ketegory</label>
            <div class="input-group mb-1">
                <select class="custom-select @error('category') is-invalid @enderror" id="product_kategory" name="category_id[]" multiple="">
					@foreach($categories as $category)
						<option value="{{ $category->id }}">{{ $category->category_name }}</option>
					@endforeach
                </select>
                <div class="input-group-append">
                    <label class="input-group-text" for="product_kategory">Kategory</label>
                </div>
            </div>
            <p class="text-secondary text-decoration-none">Can't find any category? Let's <a class="text-decoration-none" href="{{ url('admin/categories') }}">create a new category</a></p>
        </div>
        <div class="form-group">
            <label class="font-weight-bolder" for="description">Product Description</label>
            <textarea type="text" class="form-control @error('description') is-invalid @enderror" id="description" name="description" placeholder="Enter the product description" style="resize:none;height:120px;"></textarea>
            @error('description')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>
        <div class="form-group">
            <label class="font-weight-bolder" for="product_image">Product Image</label>
            <div class="custom-file">
                <input type="file" accept="image/*" name="files[]" id="product_image" class="custom-file-input @error('files') is-invalid @enderror" multiple="true">
                <label class="custom-file-label" for="product_image">Select the product image</label>
                @error('files')
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
        <div class="form-row">
            <div class="form-group col-md-6">
                <label class="font-weight-bolder" for="product_price">Product Price</label>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Rp</span>
                    </div>
                    <input type="text" id="product_price" class="form-control price text-right @error('price') is-invalid @enderror" name="price" placeholder="Enter the product price">
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
                    <input type="text" id="product_price" class="form-control text-right @error('weight') is-invalid @enderror" name="weight" placeholder="Enter the product weight">
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
                    <input type="text" id="product_price" class="form-control text-right @error('stock') is-invalid @enderror" name="stock" placeholder="Enter the product stock">
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
        <button type="submit" class="btn btn-primary btn-lg btn-block">Add and Publish Product</button>
    </form>

</div>
@endsection