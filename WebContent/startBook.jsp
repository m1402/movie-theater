<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

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
		//20121225 (�⺻:12/25/2012)
		});
	});
</script>

	<!-- body -->

	<h1>��ȭ ����</h1>
	<form name=form1>
		��ȭ���� <input type="text" id="dtp2">
		���弱�� <input type="text" id="dtp2">
		��¥���� <input type="text" id="dtp1">
	</form>
	<form name=form2>
		�󿵽ð�ǥ <input type="text" id="dtp2">
		�ο����� <input type="text" id="dtp2">	
	</form>
	<form name=form3>
		�¼����� <input type="text" id="dtp2">
	</form>
	
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />