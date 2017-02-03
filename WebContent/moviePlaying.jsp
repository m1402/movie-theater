<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<c:forEach items="${moviePlayingList}" var="vo1">  <!-- request scope�� ArrayList alist�� �����س����� -->
   	<tr>
	   <td>${vo1.bunho}</td>
	   <!-- <td>${vo1.snsjemok}</td> --> <!-- �̰����� �ۼ��� ���߿��� �Ʒ��� ���� --> 
	   <td><a href="keulSearchOne.do?snsjemok=${vo1.snsjemok}">${vo1.snsjemok}</a></td>
	   <td>${vo1.snswriter}</td>
	   <td>${vo1.snscontent}</td>
	</tr>

</c:forEach>


<center>
<h1>���� ����</h1>
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
	<th bgcolor="orange" width="50"></th>
	<th bgcolor="orange" width="350">��ȭ</th>
	<th bgcolor="orange" width="100">��ȭ����</th>
	<th bgcolor="orange" width="100">������</th>
	<th bgcolor="orange" width="100">������</th>
</tr>


<tr>
	<td align="center" width="100" height="120">1</td>
	<td align="left" width="350">
	<img src="static/img/movie/kongjo.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">����</td>
	<td align="center" width="100">2017-01-01</td>
	<td align="center" width="100">28%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">2</td>
	<td align="left" width="350">
	<img src="static/img/movie/contact.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">����Ʈ</td>
	<td align="center" width="100">2017-01-12</td>
	<td align="center" width="100">50%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">3</td>
	<td align="left" width="350">
	<img src="static/img/movie/FabricatedCity.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">���۵� ����</td>
	<td align="center" width="100">2017-12-25</td>
	<td align="center" width="100">81%</td>
</tr>





<tr>
	<td align="center" width="100" height="120">4</td>
	<td align="left" width="350">
	<img src="static/img/movie/moana.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">��Ƴ�</td>
	<td align="center" width="100">2017-12-31</td>
	<td align="center" width="100">28%</td>
</tr>

<tr>
	<td align="center" width="100" height="120">5</td>
	<td align="left" width="350">
	<img src="static/img/movie/starwars.jpg" width="50" height="70"></br>
	<a href="getBoard.jsp">�����ϱ�</a></td>
	<td align="center" width="100">��Ÿ����:�����Ʒ���</td>
	<td align="center" width="100">2017-12-28</td>
	<td align="center" width="100">17%</td>
</tr>











</table>
<br>
</center>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />