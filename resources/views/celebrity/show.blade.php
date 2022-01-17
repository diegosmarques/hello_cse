@extends('layout.app')
@section('content')

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

        <h1>One Celebrity</h1>

        <div>
        {{ $celebrity }}
        </div>

</div>
@endsection