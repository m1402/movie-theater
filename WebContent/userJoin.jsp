<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<h1 color="blue;">ȸ������</h1>
<form action="userJoinRequest.lhj" method="post" accept-charset="EUC-KR">
	<table style="border: 1px; margin: auto; text-align: center;">
		<tbody>
			<tr>
				<input type="hidden" name="auth" value="U">
			</tr>
			<tr>
				<th>ID</th>
				<td><input id="id" name="id"></td>
			</tr>
			<tr>
				<th>�н�����</th>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>
			<tr>
				<th>�̸�</th>
				<td><input id="name" name="name"></td>
			</tr>
			<!-- 				
				<tr>
					<th>�̸���</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
				<tr>
					<th>�ּ�</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
				<tr>
					<th>����</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
 -->


		</tbody>
	</table>
<br>
	<button type="submit">�����ϱ�</button>
</form>

<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />