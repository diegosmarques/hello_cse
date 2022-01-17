@extends('layout.app')
@section('content')

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Edit your Celebrity</title>

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

<form action="{{route('celebrity.update')}}" method="POST" enctype="multipart/form-data">
        <!-- Add CSRF Token -->
        @csrf
        <input type="hidden" name="_method" value="PUT">
    <div>
        <input type="hidden" name="id" value="{{$celebrity->id}}">
    </div>    
    <div class="form-group">
        <label>Name</label>
        <input type="text" class="form-control" name="name" required value="{{$celebrity->name}}">
    </div>
    <div class="form-group">
        <label>Surname</label>
        <input type="text" class="form-control" name="surname" required value="{{$celebrity->surname}}">
    </div>
    <div class="form-group">
        <label>Description</label>
        <textarea  name="description" rows="4" cols="50" class="form-control" required  >{{$celebrity->description}}</textarea>
    </div>
    <div class="form-group">
    <label for="formFileSm" class="form-label">Chose a picture of the celebrity</label>
        <input class="form-control form-control-sm" name="file" type="file" >
        <small>If you want to keep the same photo as before, just don't upload a new file that we gonna keep the old one</small>
        <small>Accepted files : jpg,jpeg,png,gif,svg | Max size accepted-2MB</small>
    </div>
    <button type="submit" class="btn btn-primary mt-2">Save</button>
</form>



</div>
@endsection