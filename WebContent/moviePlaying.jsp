<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<c:forEach items="${moviePlayingList}" var="vo1">  <!-- request scope에 ArrayList alist에 저장해놓은것 -->
   	<tr>
	   <td>${vo1.bunho}</td>
	   <!-- <td>${vo1.snsjemok}</td> --> <!-- 이것으로 작성후 나중에ㅡ 아래로 수정 --> 
	   <td><a href="keulSearchOne.do?snsjemok=${vo1.snsjemok}">${vo1.snsjemok}</a></td>
	   <td>${vo1.snswriter}</td>
	   <td>${vo1.snscontent}</td>
	</tr>

</c:forEach>


<center>
<h1>현재 상영작</h1>
<h3><font color="blue">
   회원</font>님 로그인 환영합니다</h3>

<form action="#" method="post">
 
 <table border="1" cellpadding="0" 
           cellspacing="0" width="700"> 
	<tr>
		<td align="right">
			<select name="searchCondition">
			<option value="TITLE">제목
			<option value="CONTENT">내용
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


<tr>
	<td align="center" width="100" height="120">1</td>
	<td align="left" width="350">
	<img src="static/img/movie/kongjo.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">공조</td>
	<td align="center" width="100">2017-01-01</td>
	<td align="center" width="100">28%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2</td>
	<td align="left" width="350">
	<img src="static/img/movie/contact.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">컨택트</td>
	<td align="center" width="100">2017-01-12</td>
	<td align="center" width="100">50%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">3</td>
	<td align="left" width="350">
	<img src="static/img/movie/FabricatedCity.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">조작된 도시</td>
	<td align="center" width="100">2017-12-25</td>
	<td align="center" width="100">81%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">4</td>
	<td align="left" width="350">
	<img src="static/img/movie/moana.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">모아나</td>
	<td align="center" width="100">2017-12-31</td>
	<td align="center" width="100">28%</td>
</tr>

<tr>
	<td align="center" width="100" height="120">5</td>
	<td align="left" width="350">
	<img src="static/img/movie/starwars.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">스타워즈:포스아레나</td>
	<td align="center" width="100">2017-12-28</td>
	<td align="center" width="100">17%</td>
</tr>











</table>
<br>
</center>
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />