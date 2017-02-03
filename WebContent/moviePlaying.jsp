<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<center>
<h1>���� ����</h1>

<form action="#" method="post">
 
 <table border="1" cellpadding="0" 
           cellspacing="0" width="700"> 
	<tr>
		<td align="right">
			<select name="searchCondition">
			<option value="TITLE">��ȭ����
			<option value="CONTENT">����
			</select>
			<input name="searchKeyword" type="text"/>
			<input type="submit" value="�˻�"/>
		</td>
	</tr>
	</table>
</form>

<table border="1" cellpadding="0" cellspacing="0" 
width="700">
<tr>
	<th bgcolor="orange" width="50"></th>
	<th bgcolor="orange" width="350">��ȭ</th>
	<th bgcolor="orange" width="100">��ȭ����</th>
	<th bgcolor="orange" width="100">������</th>
	<th bgcolor="orange" width="100">������</th>
</tr>

<c:forEach items="${moviePlayingList}" var="vo1">  <!-- request scope�� ArrayList alist�� �����س����� -->
   	<tr>
		<td align="center" width="100" height="120">${vo1.num}</td>
		<td align="left" width="350"><img
			src="static/img/movie/${vo1.imgurl}.jpg" width="50" height="70"></br>
			<a href="startBook.kms?num=${vo1.num}">�����ϱ�</a></td>
		<td align="center" width="100">${vo1.title}</td>
		<td align="center" width="100">${fn:substring(vo1.day, 0, 10)}</td>
		<td align="center" width="100">${vo1.bookp}%</td>

	</tr>

</c:forEach>

</table>
<br>
</center>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />