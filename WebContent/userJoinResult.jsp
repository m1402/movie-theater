<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<c:if test="${userJoinResult == 1}">
	<span>ȸ������ ����</span>
</c:if>
<c:if test="${userJoinResult != 1}">
	<span>ȸ������ ����</span>
</c:if> 

<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />