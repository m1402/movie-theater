<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->
	<fieldset border="2";>
		<legend>
			<h1>�α���</h1>
		</legend>
		<form action="userLoginCheck.lhj" method="post">
			<table>
				<tr>
					<th><strong>���̵� : </strong> <input name="id" type="text"></th> <br />
			<br /> 
			<table>
				<tr>
					<th><strong>�н����� : </strong> <input name="pw" type="password"></th>
			</table>
			
			<table>
				<tr>
					<th><button type="submit">�α���</button></th>
					<th><button type="button" onClick="location.href='userJoin.jsp'">ȸ������</button></th>
				</tr>
			</table>
		</form>
	</fieldset>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />