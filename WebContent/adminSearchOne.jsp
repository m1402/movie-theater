<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<h1>영화 하나 입력하기 </h1>
 <form  action="adminUpdating.kms2" >
<table border="2">

    <tr>
	   <td>No.</td>
	   <td>영화제목</td>
	   <td>감독</td>
	   <td>예매율</td>
	   <td>개봉일</td>
	</tr>
   	<tr>
   	   <td><input type="text" name="num" value="${sv1.num}" readonly="readonly"></td>
	   <td><input type="text" name="title" value="${sv1.title}"></td>
	   <td><input type="text" name="dir" value="${sv1.dir}"></td>
	   <td><input type="text" name="bookp" value="${sv1.bookp}"></td>
	   <td><input type="text" name="day" value="${sv1.day}"></td>
	   
	</tr>
	<tr>
		<td colspan="5">
		
	<input type="submit" value="영화 수정">
			<input type="reset" value="수정 취소">
        <!-- 수정작성하러가면된다. dao에 update_sns()만든다 -->
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="adminAllinfo.kms2">[모두보기]</a></td>
<td><a href="adminDeleting.kms2?num=${sv1.num}">[삭제]</a></td>
</tr>
</table>

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />