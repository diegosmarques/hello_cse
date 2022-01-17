@extends('layout.app')
@section('content')

<head>


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


<div >
	
	<div class="tabs">
	<h1 class="text-center">Profile Browser</h1>
		<div class="tab-header">
		
			@foreach($celebrities as $index => $celebrity)
				
			<div class="tab-menu" onclick="changeTab({{$index}})">
				{{strip_tags($celebrity->name) }}  {{strip_tags($celebrity->surname)}}
			</div>
				
			@endforeach
			
		</div>
		<div class="tab-content">
			@foreach($celebrities as $index => $celebrity)
			<div>
				
			@if (Auth::check())
			<form action="{{ route('celebrity.destroy', $celebrity->id)}}" method="POST" class="form-edit-delete">
					<a class="btn btn-primary me-md-2" href="{{ route('celebrity.edit', $celebrity->id) }}" >Edit</a>
					<!-- Add CSRF Token -->
					@csrf
					<input class="btn btn-danger me-md-2" type="hidden" name="_method" value="DELETE">
				
					<button class="btn btn-danger" type="submit" >Delete</button>
			</form>
			@endif
				
				<img class="left-img" src="{{asset('storage/images/'.$celebrity->image_path)}}"  />
				<h2 > {{strip_tags($celebrity->name)}} {{strip_tags($celebrity->surname)}} </h2>
				<p >{{strip_tags($celebrity->description)}}  </p>

			</div>
						
			@endforeach
		</div>
	</div>

	<div class="tab-phone">
	<h1 class="text-center">Profile Browser</h1>
		@foreach($celebrities as $index => $celebrity)
		<button class="collapsible">{{strip_tags($celebrity->name)}}  {{strip_tags($celebrity->surname)}}</button>
		<div class="tab-content-phone">
			<div class="tab-content-group">
			@if (Auth::check())
			<form action="{{ route('celebrity.destroy', $celebrity->id)}}" method="POST" class="form-edit-delete">
					<a class="btn btn-primary me-md-2" href="{{ route('celebrity.edit', $celebrity->id) }}" >Edit</a>
					<!-- Add CSRF Token -->
					@csrf
					<input class="btn btn-danger me-md-2" type="hidden" name="_method" value="DELETE">
				
					<button class="btn btn-danger" type="submit" >Delete</button>
			</form>
			@endif
			<img class="left-img" src="{{asset('storage/images/'.$celebrity->image_path)}}"  />
			<h2 > {{strip_tags($celebrity->name)}} {{strip_tags($celebrity->surname)}} </h2>
			<p >{{strip_tags($celebrity->description)}}  </p>
			</div>
		</div>
		@endforeach
	</div>
</div>

<script>
	function _class(name){
    return document.getElementsByClassName(name);
  }
   
  let tabPanes = _class("tab-header")[0].getElementsByTagName("div");
  _class("tab-content")[0].getElementsByTagName("div")[0].classList.add("active");
  _class("tab-header")[0].getElementsByTagName("div")[0].classList.add("active");

  function changeTab(index) {
    // Declare all variables
    var i, tabcontent, tablinks;
  
    // Get all elements with class="tab-content" and hide them
    tabcontent = _class("tab-content")[0].getElementsByTagName("div");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].className = tabcontent[i].className.replace("active", "");
    }
  
    // Get all elements with class="tab-header" and remove the class "active"
    tablinks = _class("tab-header")[0].getElementsByTagName("div");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace("active", "");
    }
  
    // Show the current tab, and add an "active" class to the button that opened the tab
        _class("tab-header")[0].getElementsByTagName("div")[index].classList.add("active");
        _class("tab-content")[0].getElementsByTagName("div")[index].classList.add("active");
      
      
  }
 // Show the current tab, and add an "active" on the phone
  var coll = document.getElementsByClassName("collapsible");
  
  
  var i;
  
  for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function() {
      this.classList.toggle("active");
      var content = this.nextElementSibling;
      if (content.style.maxHeight){
        content.style.maxHeight = null;
      } else {
        content.style.maxHeight = content.scrollHeight + "px";
      } 
    });
  }

  
</script>

@endsection