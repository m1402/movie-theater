<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<!-- script -->
<script type="text/javascript"
	src="static/js/book/dt/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery-ui-1.8.10.custom.min.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery.ui.datepicker.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery.ui.widget.js"></script>

<link rel="stylesheet" type="text/css"
	href="static/js/book/dt/jquery.ui.datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="static/js/book/dt/jquery.ui.all.css" />


<script type="text/javascript" src="jquery1/jquery-3.1.1.js"></script>
<script>
	$(function() {
		var soo = [ 1, 2, 3, 4 ]; //0,1,2.. //1,2,3,4...
		$.each(soo, function(index, value) {
			$('#title' + value).click(function() {
				if ($('#stitle' + value).is(':hidden')) //hide상태
					$('#stitle' + value).show(); //보여줘
				else
					//show 상태면?
					$('#stitle' + value).hide(); //숨겨
			});
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("#dtp_3").datepicker({
			changeYear : true,
			changeMonth : true,
			dateFormat : 'yy-mm-dd'
		//20121225 (기본:12/25/2012)
		});
	});
</script>

<!-- body -->

<h1>영화 예매</h1>
<form name=form1>
	<br>
	<br>
	<h3>1. 영화선택</h3>
	<select>
		<option>컨택트</option>
		<option>조작된 도시</option>
		<option>공조</option>
		<option>모아나</option>
		<option>스타워즈</option>
	</select>

	<%-- <div id="menubar">
		<table align="center">
			<colgroup>
				<col width=125 />
				<col width="25%" />
				<col width="25%" />
				<col width="25%" />
			</colgroup>
			<thead>
				<tr>
					<th>No.</th>
					<th>영화제목</th>
					<th>감독</th>
					<th>예매율</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><a href="#">8</a></th>
					<th><a href="#">공조</a></th>
					<th><a href="#">김성훈</a></th>
					<th><a href="#">25</a></th>
				</tr>
			</tbody>
		</table>
	</div> --%>
	
	<h3>2. 극장선택</h3>
	<select>
		<option>멀캠시네마 강남</option>
		<option>멀캠시네마 명동</option>
		<option>멀캠시네마 신촌</option>
		<option>멀캠시네마 용산</option>
		<option>멀캠시네마 홍대</option>
	</select>

	<%-- <div id="menubar2">
		<table align="center">
			<colgroup>
				<col width=125 />
				<col width="20%" />
				<col width="20%" />
				<col width="20%" />
				<col width="20%" />
			</colgroup>
			<tbody>
				<tr>
					<th><a href="#">멀캠시네마 강남</a></th>
					<th><a href="#">멀캠시네마 명동</a></th>
					<th><a href="#">멀캠시네마 신촌</a></th>
					<th><a href="#">멀캠시네마 용산</a></th>
					<th><a href="#">멀캠시네마 홍대</a></th>
				</tr>
			</tbody>
		</table>
	</div> --%>
	<h3>3. 날짜선택</h3>
	<br>
	<div>
		<input type="text" id="dtp_3">
	</div>
</form>

<div id="title1">
	<h3>4. 상영시간표</h3>
</div>

<div id="stitle1" style="display: none">
	<ul>
		<img src="theater_titetable.jpg" width="400" id=timetable>
		<li>시간 선택 : <input type="text" width=150 id="dtp2"></li>
	</div>
  
<div id="title2"> <h3>5. 인원선택</h3> </div>
   
  <div id="stitle2"  style="display:none">
    <ul>
   	  <table>
   	  	<tbody>
   	  	
   	  	</tbody>
      <li>인원 수 : <input type="text" width=150 id="dtp2"></li>
      </table>
    </ul>
  </div>
  
<div id="title3"> <h3>6. 좌석선택</h3> </div>
   
  <div id="stitle3"  style="display:none">
    <ul>
      <img src="theater_seat.JPG" width="500" id=yokeo>
      <li>좌석번호 입력 : <input type="text" width=150 id="dtp2"></li>
      
    </ul>
  </div>
  <br>
  <br>
  <br>
  <input type=submit value="예매"> <input type=submit value="취소">  
  <!-- // 컨텐츠 종료 --> <!-- // 공통 -->
			<jsp:include page="/jsp/common/footer.jsp" flush="false" />