@extends('layout.app')
@section('content')

<head>
    
    <title>New Celebrity</title>

   
</head>
<!-- if validation in the controller fails, show the errors -->
@if ($errors->any())
   <div class="alert alert-danger">
     <ul>
     @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
     @endforeach
     </ul>
   </div>
@endif

<div>

<form action="{{ route('celebrity.store') }}" method="post" enctype="multipart/form-data">
        <!-- Add CSRF Token -->
        @csrf
    <div class="form-group">
        <label>Name</label>
        <input type="text" class="form-control" name="name" required>
    </div>
    <div class="form-group">
        <label>Surname</label>
        <input type="text" class="form-control" name="surname" required>
    </div>
    <div class="form-group">
        <label>Description</label>
        <textarea  name="description" rows="4" cols="50" class="form-control"></textarea>
    </div>
    <div class="form-group">
    <label for="formFileSm" class="form-label">Chose a picture of the celebrity</label>
    <input class="form-control form-control-sm" name="file" type="file" required>
    <small>Accepted files: jpg,jpeg,png,gif,svg | Max size accepted-2MB</small>
    </div>
    <button type="submit" class="btn btn-primary mt-2">Save</button>
</form>



</div>
@endsection