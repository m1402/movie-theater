<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="jquery1/jquery-3.1.1.js"></script>
	<script>
	$(function(){ 
		var soo=[1,2,3,4]; //0,1,2.. //1,2,3,4...
		$.each(soo,function(index,value){
			$('#title'+value).click(function(){
				if($('#stitle' + value).is(':hidden')) //hide상태
					$('#stitle' + value).show(); //보여줘
				else //show 상태면?
					$('#stitle' + value).hide(); //숨겨
			});
		});	
	});
	
	</script>
<title>Insert title here</title>
</head>
<body>

<div id="title1"><h3>상영시간표</h3> </div>

	<div id="stitle1" style="display:none">
		<ul>
		    <img src="theater_titetable.jpg" width="400" id=timetable>
			<li><A href="s1.htm">영화제목들</A>
			<li><A href="s2.htm">상영관안내</A>
		</ul>
	</div>
  
<div id="title2"> <h3>인원선택</h3> </div>
   
  <div id="stitle2"  style="display:none">
    <ul>
   	  <table>
   	  	<tbody>
   	  	
   	  	</tbody>
      <li><input type="text" id="dtp2"></li>
      </table>
    </ul>
  </div>
  
<div id="title3"> <h3>좌석선택</h3> </div>
   
  <div id="stitle3"  style="display:none">
    <ul>
      <img src="theater_seat.JPG" width="500" id=yokeo>
      <li>예약좌석 : <input type="text" id="dtp2"></li>
      
    </ul>
  </div>

<!--     
<div id="title4"> <h3>주차</h3> </div>
   
  <div id="stitle4"  style="display:none">
    <ul>
      <li><A href="s1.htm">주차장약도</A>
      <li><A href="s2.htm">주차요금안내</A>
    </ul>
  </div>  
 -->
 
</body>
</html>