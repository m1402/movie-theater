
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<center>
 <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="moviePlaying.ksr">�������</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="movieUnreleased.ksr"><u>�󿵿�����</u></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="movieRanking.ksr">��ȭ���ż���</a>
                    </li>

</ul>
</div>
</center>





<center>
<h1>�󿵿�����
</h1>



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

<table border="1" cellpadding="0" cellspacing="0" width="700">
<tr>
	<th bgcolor="orange" width="50">������</th>
	<th bgcolor="orange" width="350">��ȭ</th>
	<th bgcolor="orange" width="100">��ȭ����</th>
	<th bgcolor="orange" width="100">����</th>
</tr>


<tr>
	<td align="center" width="100" height="120">2017-02-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/fallingsnow.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">���� �����</td>
	<td align="center" width="100">���� ������</td>
	
</tr>





<tr>
	<td align="center" width="100" height="120">2017-02-22</td>
	<td align="left" width="350">
	<img src="static/img/movie/snorden.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">�����</td>
	<td align="center" width="100">�ø��� ����</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/thecure.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">��ť��</td>
	<td align="center" width="100">��� ����Ű</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-12</td>
	<td align="left" width="350">
	<img src="static/img/movie/moonlight.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">������Ʈ</td>
	<td align="center" width="100">�踮 ��Ų��</td>
</tr>

<tr>
	<td align="center" width="100" height="120">2017-03-30</td>
	<td align="left" width="350">
	<img src="static/img/movie/lovemovie.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp"
	>�����ϱ�</a></td>
	<td align="center" width="100">����� �ô�</td>
	<td align="center" width="100">�丶�� ���ͺ�����
	</td>
</tr>











</table>
<br>
</center>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />