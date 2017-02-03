<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>지도</title>
<script   src="/jquery-1.4.4.min.js"></script>
<script  
  src="https://apis.daum.net/maps/maps3.js?
    apikey=발급받은키"></script>
</head>
<body>
	<center>
     <div id="map" style="width:800px;height:500px;">
     </div>
	</center>

	<script>
	var container = document.getElementById('map');
	var options = {
     	center: 
     	new daum.maps.LatLng(33.450701, 126.570667),
 		level: 3
	};

	var map = new daum.maps.Map(container, options);

	$(function(){
	   $("#kaja").click(function(){
		var eodi = $("#eodi").val();			
		eodi = encodeURIComponent(eodi);
		var url
		= "https://apis.daum.net/local"+
		"/v1/search/keyword.json?"+
				"apikey=발급받은키&query="+eodi; 
       $.getJSON(url+"&callback=?" ,function(kab){
           var bada = kab.channel.item;
		   $.each(bada, function(index, value){
     		 var latitude = value.latitude;
			 var longitude = value.longitude;
			 if(index == 0){
   			  var container =getElementById('map');
			  var options = { 
				center:
  		new daum.maps.LatLng(latitude, longitude),
				level: 3 
				};
   var map = new daum.maps.Map(container, options); 
		      }
		 });	
    	});				
	});
  });
</script>
<div align=center>	
	찾아보자 <input type=text id="eodi">
	<input type=button value="눌러" id=kaja>
<div id="map"></div>
</div>			
</body>
</html>
