<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<h1>영화 관리자 모드</h1>
<table border="2">
	<tr>
		<td colspan="5">
		 
		 <form  action="adminAllinfo.kms2" >
			<input type="submit" value="영화 리스트 모두 보기">
          </form>
          
		</td>
	</tr>
    <tr>
	   <td>No.</td>
	   <td>영화제목</td>
	   <td>감독</td>
	   <td>예매율</td>
	   <td>개봉일</td>
	</tr>
<c:forEach items="${alist1}" var="vo1">  <!-- request scope에 ArrayList alist에 저장해놓은것 -->
   	<tr>
	   <td>${vo1.num}</td>
 
	   <td><a href="adminSearchOne.kms2?num=${vo1.num}">${vo1.title}</a></td>
	   <td>${vo1.dir}</td>
	   <td>${vo1.bookp}</td>
	   <td>${vo1.day}</td>
	</tr>

</c:forEach>	

	 </table>
<table border=0>
<tr>
<td><a href="adminWriting.jsp">[입력]</a></td>
</tr>
</table>

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />