
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<center>
 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="moviePlaying.ksr">현재상영작</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="movieUnreleased.ksr"><u>상영예정작</u></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="movieRanking.ksr">영화예매순위</a>
                    </li>

</ul>
</div>
</center>





<center>
<h1>상영예정작
</h1>



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

<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
	<th bgcolor="orange" width="50">개봉일</th>
	<th bgcolor="orange" width="350">영화</th>
	<th bgcolor="orange" width="100">영화제목</th>
	<th bgcolor="orange" width="100">감독</th>
</tr>


<tr>
	<td align="center" width="100" height="120">2017-02-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/fallingsnow.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">폴링 스노우</td>
	<td align="center" width="100">샤밈 샤리프</td>
	
</tr>





<tr>
	<td align="center" width="100" height="120">2017-02-22</td>
	<td align="left" width="350">
	<img src="static/img/movie/snorden.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">스노든</td>
	<td align="center" width="100">올리버 스톤</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/thecure.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">더큐어</td>
	<td align="center" width="100">고어 버빈스키</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-12</td>
	<td align="left" width="350">
	<img src="static/img/movie/moonlight.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">예매하기</a></td>
	<td align="center" width="100">문라이트</td>
	<td align="center" width="100">배리 젠킨스</td>
</tr>

<tr>
	<td align="center" width="100" height="120">2017-03-30</td>
	<td align="left" width="350">
	<img src="static/img/movie/lovemovie.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp"
	>예매하기</a></td>
	<td align="center" width="100">사랑의 시대</td>
	<td align="center" width="100">토마스 빈터베르그
	</td>
</tr>











</table>
<br>
</center>
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />