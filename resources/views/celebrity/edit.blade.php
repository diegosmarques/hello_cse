<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>New Celebrity</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Nunito';
        }
    </style>
</head>
<body>
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

<form action="/celebrity/update" method="POST" enctype="multipart/form-data">
        <!-- Add CSRF Token -->
        @csrf
        <input type="hidden" name="_method" value="PUT">
    <div>
        <input type="text" name="id" value="{{$celebrity->id}}">
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
        <textarea  name="description" rows="4" cols="50" class="form-control" required  >
        {{$celebrity->description}}>
        </textarea>
    </div>
    <div class="form-group">
        <input type="file" name="file" required>
    </div>
    <button type="submit">Submit</button>
</form>



</div>
</body>
</html>