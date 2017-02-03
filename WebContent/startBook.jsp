<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

	<!-- script -->
<script type="text/javascript" src="static/js/book/dt/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="static/js/book/dt/jquery-ui-1.8.10.custom.min.js"></script>
<script type="text/javascript" src="static/js/book/dt/jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="static/js/book/dt/jquery.ui.widget.js"></script>

<link rel="stylesheet" type="text/css"
	href="static/js/book/dt/jquery.ui.datepicker.css" />
<link rel="stylesheet" type="text/css" href="static/js/book/dt/jquery.ui.all.css" />



<script type="text/javascript">
	$(function() {
		$("#dtp1").datepicker({
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
		영화선택 <input type="text" id="dtp2">
		극장선택 <input type="text" id="dtp2">
		날짜선택 <input type="text" id="dtp1">
	</form>
	<form name=form2>
		상영시간표 <input type="text" id="dtp2">
		인원선택 <input type="text" id="dtp2">	
	</form>
	<form name=form3>
		좌석선택 <input type="text" id="dtp2">
	</form>
	
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />