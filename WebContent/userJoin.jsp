<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<h1 color="blue;">회원가입</h1>
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
				<th>패스워드</th>
				<td><input type="password" id="pw" name="pw"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input id="name" name="name"></td>
			</tr>
			<!-- 				
				<tr>
					<th>이메일</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input id="JOIN_pw" name="JOIN_pw"></td>
				</tr>
 -->


		</tbody>
	</table>
<br>
	<button type="submit">가입하기</button>
</form>

<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />