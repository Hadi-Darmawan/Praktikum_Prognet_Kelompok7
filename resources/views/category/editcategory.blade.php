@extends('layouts/admin')

@section('title', 'Shoppers - Category')

@section('contentTitle', 'Product Category Detail')

@section('content')

<div class="card p-3 mb-5 pb-3 mt-4">
    <div class="card-body text-center">
        <h3 class="card-title mb-5">{{ $category->category_name }}</h3>
        <div class="form-group mb-3 px-4">
            <a class="btn btn-outline-danger mx-1" href="/categories/delete/{{ $category->id }}" onclick="return confirm('Apa yakin ingin menghapus data ini?')">Delete Category</a>
            <a href="{{ url('categories')}}" class="btn btn-outline-secondary mx-1">All Product Category</a>
            <a href="{{ url('products/create')}}" class="btn btn-outline-primary mx-1">Add New Product</a>
        </div>
        <div class="form-group mb-3">
            <form class="input-group mb-3" method="post" action="{{ route('categories.update', $category->id) }}">
                @method('patch')
                @csrf
                <input type="text" class="form-control mx-1" name="category_name" value="{{ $category->category_name }}" placeholder="Edit Product Category Name">
                <button class="btn btn-outline-primary mx-1" type="submit">Save Change</button>
            </form>
        </div>
        @error('category_name')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
    </div>
</div>

@endsection