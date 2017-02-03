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
			<table style="border: 1px; margin: auto; text-align: center;">
				<tr>
					<th><b><strong> <h4>아이디</h4></strong> <center><input name="id" type="text" ></center></th> <br />
			<br /> 
			<table style="border: 1px; margin: auto; text-align: center;">
				<br>
				<tr>
					<th><strong><h4>패스워드</h4></strong> <center><input name="pw" type="password" ></center></th>
			</table>
            

            <table style="border: 1px; margin: auto; text-align: center;">
				<br>
				<tr>
					<th><button type="submit"><span>로그인</span></button></th>
                  
                    <th><button type="button" onClick="location.href='userJoin.jsp'"><span>회원가입</span></button></th>
				</tr>
			</table>
		</form>
	</fieldset>
<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />