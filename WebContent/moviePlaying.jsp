<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<center>
<h1>현재 상영작</h1>

<form action="#" method="post">
 
 <table border="1" cellpadding="0" 
           cellspacing="0" width="700"> 
	<tr>
		<td align="right">
			<select name="searchCondition">
			<option value="TITLE">영화제목
			<option value="CONTENT">감독
			</select>
			<input name="searchKeyword" type="text"/>
			<input type="submit" value="검색"/>
		</td>
	</tr>
	</table>
</form>

<table border="1" cellpadding="0" cellspacing="0" 
width="700">
<tr>
	<th bgcolor="orange" width="50"></th>
	<th bgcolor="orange" width="350">영화</th>
	<th bgcolor="orange" width="100">영화제목</th>
	<th bgcolor="orange" width="100">개봉일</th>
	<th bgcolor="orange" width="100">예매율</th>
</tr>

<c:forEach items="${moviePlayingList}" var="vo1">  <!-- request scope에 ArrayList alist에 저장해놓은것 -->
   	<tr>
		<td align="center" width="100" height="120">${vo1.num}</td>
		<td align="left" width="350"><img
			src="static/img/movie/${vo1.imgurl}.jpg" width="50" height="70"></br>
			<a href="startBook.kms?num=${vo1.num}">예매하기</a></td>
		<td align="center" width="100">${vo1.title}</td>
		<td align="center" width="100">${fn:substring(vo1.day, 0, 10)}</td>
		<td align="center" width="100">${vo1.bookp}%</td>

	</tr>

</c:forEach>

</table>
<br>
</center>
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />