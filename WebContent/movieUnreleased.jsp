<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->
<center>
<h1>��� ������ȭ</h1>
<h3><font color="blue">
   ȸ��</font>�� �α��� ȯ���մϴ�</h3>

<form action="#" method="post">
 
 <table border="1" cellpadding="0" 
           cellspacing="0" width="700"> 
	<tr>
		<td align="right">
			<select name="searchCondition">
			<option value="TITLE">����
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
	<th bgcolor="orange" width="50">������</th>
	<th bgcolor="orange" width="350">��ȭ</th>
	<th bgcolor="orange" width="100">��ȭ����</th>
	<th bgcolor="orange" width="100">����</th>
</tr>


<tr>
	<td align="center" width="100" height="120">2017-02-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/kongjo.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">����</td>
	<td align="center" width="100">�輺��</td>
	
</tr>





<tr>
	<td align="center" width="100" height="120">2017-02-22</td>
	<td align="left" width="350">
	<img src="static/img/movie/contact.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">���� �����</td>
	<td align="center" width="100">���� ������</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-01</td>
	<td align="left" width="350">
	<img src="static/img/movie/FabricatedCity.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">�����</td>
	<td align="center" width="100">�ø��� ����</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2017-03-12</td>
	<td align="left" width="350">
	<img src="static/img/movie/moana.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">�� ť��</td>
	<td align="center" width="100">���� ����Ű</td>
</tr>

<tr>
	<td align="center" width="100" height="120">2017-03-30</td>
	<td align="left" width="350">
	<img src="static/img/movie/starwars.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">������Ʈ</td>
	<td align="center" width="100">�踮 ��Ų��</td>
</tr>











</table>
<br>
</center>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />