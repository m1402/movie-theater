<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<c:if test="${isUser == true}">
	<span>�α��� ����</span>
</c:if>
<c:if test="${isUser == false}">
	<span><h1>�α��� ����</h1></span>
</c:if> 

<!-- �α��� ���� �� �ǵ��ư��� ��ư -->
<p>
<button type="button" onClick="location.href='userLogin.jsp'"><span>�ǵ��ư���</span></button>
</p>


<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />