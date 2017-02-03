<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->
	<fieldset border="2";>
		<legend>
			<h1>로그인</h1>
		</legend>
		<form action="userLoginCheck.lhj" method="post">
			<table>
				<tr>
					<th><strong>아이디 : </strong> <input name="id" type="text"></th> <br />
			<br /> 
			<table>
				<tr>
					<th><strong>패스워드 : </strong> <input name="pw" type="password"></th>
			</table>
			
			<table>
				<tr>
					<th><button type="submit">로그인</button></th>
					<th><button type="button" onClick="location.href='userJoin.jsp'">회원가입</button></th>
				</tr>
			</table>
		</form>
	</fieldset>
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />