
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
                        <a class="page-scroll" href="movieUnreleased.ksr">상영예정작</a>
                    </li>
                    
                    
                    <li>
                        <a class="page-scroll" href="movieRanking.ksr"><u>영화예매순위</u></a>
                    </li>

</ul>
</div>
</center>









<center>
<h1>영화예매순위</h1>


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


<table border="1" cellpadding="3" cellspacing="3" 
width="700">




<tr>
	
		</tr>
	
		
<tr>
	<td rowspan="2" width="100" height="160">
	<center>1위<br></center>
	<img src="static/img/movie/contact.jpg" width="100" height="140">

	</td>
	
	<td>
	
	<br><font color="blue">
   영화제목:</font> 컨택트  <br> 
   <font color="blue">
   감독:</font> 드니 빌뇌브
	<br><font color="blue">
   	줄거리:</font> 어느 날 갑자기 찾아온 12개의 쉘 
 의문의 신호, 18시간마다 열리는 문 
 15시간 내 그들이 온 이유를 밝혀야 한다!
	<br><input type="submit" value="예매하기"/>
		
	

	</td>
	</tr>



<tr>

		</td>
		</tr>
		
<tr>
	<td rowspan="2" width="100" height="160">
	<center>2위<br></center>
	<img src="static/img/movie/FabricatedCity.jpg" width="100" height="140">

	</td>
	
	<td>
	
	<br><font color="blue">
   영화제목:</font> 조작된 도시  <br> 
   <font color="blue">
   감독:</font> 박광현
	<br><font color="blue">
   	줄거리:</font> 범죄액션의 신세계가 열린다!
새롭게 즐겨라!
게임 세계 속에서는 완벽한 리더지만 현실에서는 평범한 백수인 ‘권유’(지창욱). 
 PC방에서 우연히 휴대폰을 찾아 달라는 낯선 여자의 전화를 받게 되고 
 이후, 영문도 모른 채 그녀를 잔인하게 살해한 범인으로 몰리게 된다 
  
	<br><input type="submit" value="예매하기"/>
		

	</td>
	</tr>






<tr>

		</td>
		</tr>
		
<tr>
	<td rowspan="2" width="100" height="160">
	<center>3위<br></center>
	<img src="static/img/movie/kongjo.jpg" width="100" height="140">

	</td>
	
	<td>
	
	<br><font color="blue">
   영화제목:</font> 공조  <br> 
   <font color="blue">
   감독:</font> 김성훈
	<br><font color="blue">
   	줄거리:</font> 비밀리에 제작된 위조 지폐 동판을 탈취하려는 내부 조직에 의해 
 작전 중 아내와 동료들을 잃게 된 특수 정예부대 출신의 북한형사 ‘림철령’(현빈). 
 동판을 찾아야만 하는 북한은 남한으로 숨어든 조직의 리더 ‘차기성’(김주혁)을 잡기 위해
 역사상 최초의 남북 공조수사를 요청하고, 그 적임자로 철령을 서울에 파견한다. 
	<br><input type="submit" value="예매하기"/>

	</td>
	</tr>








<tr>

		</td>
		</tr>
		
<tr>
	<td rowspan="2" width="100" height="160">
	<center>4위<br></center>
	<img src="static/img/movie/moana.jpg" width="100" height="140">

	</td>
	
	<td>
	
	<br><font color="blue">
   영화제목:</font> 모아나   <br> 
   <font color="blue">
   감독:</font> 론 클레먼츠
	<br><font color="blue">
   	줄거리:</font> 모든 것이 완벽했던 모투누이 섬이 저주에 걸리자 
 바다가 선택한 소녀 모아나는 섬을 구하기 위해 머나먼 항해를 떠난다. 
 저주를 풀기 위해서는 오직 신이 선택한 전설의 영웅 마우이의 힘이 필요한 상황! 
 모아나는 마우이를 우여곡절 끝 설득해, 운명적 모험을 함께 떠나는데… 
	<br><input type="submit" value="예매하기"/>

	</td>
	</tr>







<tr>

		</td>
		</tr>
		
<tr>
	<td rowspan="2" width="100" height="160">
	<center>5위<br></center>
	<img src="static/img/movie/starwars.jpg" width="100" height="140">

	</td>
	
	<td>
	
	<br><font color="blue">
   영화제목:</font> 스타워즈  <br> 
   <font color="blue">
   감독:</font> 데이브 필로니
	<br><font color="blue">
   	줄거리:</font>새로운 전설을 그려나가게 될 포스의 선택을 받은 ‘레이’ 와 포스의 기운을 모아 정의를 위해 싸우는 ‘핀’
   	 그리고 저항군 최고의 파일럿 ‘포’가 함께 힘을 모아 우주의 정의를 위해 싸운다. 
	<br><input type="submit" value="예매하기"/>

	</td>
	</tr>
	</table>
	</center>
	
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />