@extends('layout.app')
@section('content')

<head>
    
	<style>
		@import "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css";

* {
  box-sizing:border-box;
}
body {
  font-family:"Raleway";
}
.tabs {
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%,-50%);
  width:70%;
  height:80%;
  background:#ffffff;
  
  overflow:hidden;
}
.tabs .tab-header {
  float:left;
  width:30%;
  height:100%;
  border-right:1px solid #ccc;
}
.tabs .tab-header > div {
  height:50px;
  font-size:16px;
  font-weight:500;
  color:#000;
  background:#ccc;
  cursor:pointer;
  padding-left:10px;
  border:1px solid #cccccc;
  
}
.tabs .tab-header > div:hover,
.tabs .tab-header > div.active {
  color:#000000;
  background:#ffffff;
  border-right:0;
  font-weight:600;
  
}
.tabs .tab-header div i {
  display:inline-block;
  margin-left:10px;
  margin-right:5px;
}
.tabs .tab-content {
 position: relative;
 height:100%;
 overflow-x:hidden;
 overflow-y:auto;
}
.tabs .tab-content > div > i {
  display:inline-block;
  width:50px;
  height:50px;
  background:#555;
  color:#f5f5f5;
  font-size:25px;
  font-weight:600;
  text-align:center;
  line-height:50px;
  border-radius:50%;
}
.tabs .tab-content > div {
  position:absolute;
  text-align:center;
  padding:40px 20px;
  top:-1000%;
  background:#ffffff;
  transition:all 500ms ease-in-out;
}
.tabs .tab-content > div.active {
  top:0px;
}
 


	</style>

</head>
<div class="container">
	<h1 class="text-center">Profile Browser</h1>
	<div class="tabs">
	<div class="tab-header">
		<div class="active tab-menu">
			{{$celebrities[0]->name}} {{$celebrities[0]->surname}}
		</div>
		@for($i = 1; count($celebrities) > $i; $i++ )
			
		<div class="tab-menu">
			{{$celebrities[$i]->name}}  {{$celebrities[$i]->surname}} 
		</div>
		@endfor
		
	</div>
	<div class="tab-indicator"></div>
	<div class="tab-content">
		
		<div class="active">
		<i class="fa fa-code">
		</i>
		<img src="{{ route('image.displayImage',$celebrities[0]->image_path)}} "  style="width: 20%; height: auto%;"/>
		<h2>{{$celebrities[0]->name}} {{$celebrities[0]->surname}}</h2>
		<p>{{$celebrities[0]->description}}.</p>
		</div>
		@for($i = 1; count($celebrities) > $i; $i++ )
		<div>
		<i class="fa fa-pencil-square"><img src="storage/app/public/celebrity/{{$celebrities[$i]->image_path}}" ></i>
		
		<h2>{{$celebrities[$i]->name}} {{$celebrities[$i]->surname}} </h2>
		<p>{{$celebrities[$i]->description}} </p>
		</div>
		@endfor
		
		
		
	</div>
	</div>
</div>

<script>
	function _class(name){
  return document.getElementsByClassName(name);
}
 
let tabPanes = _class("tab-header")[0].getElementsByTagName("div");
 
for(let i=0;i<tabPanes.length;i++){
  tabPanes[i].addEventListener("click",function(){
    _class("tab-header")[0].getElementsByClassName("active")[0].classList.remove("active");
    tabPanes[i].classList.add("active");
    
    _class("tab-indicator")[0].style.top = `calc(80px + ${i*50}px)`;
    
    _class("tab-content")[0].getElementsByClassName("active")[0].classList.remove("active");
    _class("tab-content")[0].getElementsByTagName("div")[i].classList.add("active");
    
  });
}
</script>
@endsection