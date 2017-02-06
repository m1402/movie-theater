<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<body>
<h1>영화 하나 입력하기 </h1>
 <form  action="adminWriting.kms2" >
<table border="2">

    <tr>
	
	   <td>No.</td>
	   <td>영화제목</td>
	   <td>감독</td>
	   <td>예매율</td>
	   <td>개봉일</td>
	   
	</tr>
   	<tr>
	   <td><input type="text" name="num"></td>
	   <td><input type="text" name="title"></td>
	   <td><input type="text" name="dir"></td>
	   <td><input type="text" name="bookp"></td>
	   <td><input type="text" name="day"></td>
	   
	</tr>
	<tr>
		<td colspan="5">
		
	<input type="submit" value="영화 입력">
			<input type="reset" value="입력 취소">
        
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="adminAllinfo.kms2">[모두보기]</a></td>
</tr>
</table>

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />