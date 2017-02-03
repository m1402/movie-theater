<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<!-- 컨텐츠 시작 -->

<c:if test="${isUser == true}">
	<span>로그인 성공</span>
</c:if>
<c:if test="${isUser == false}">
	<span><h1>로그인 실패</h1></span>
</c:if> 

<!-- 로그인 실패 시 되돌아가기 버튼 -->
<p>
<button type="button" onClick="location.href='userLogin.jsp'"><span>되돌아가기</span></button>
</p>


<!-- // 컨텐츠 종료 -->

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />