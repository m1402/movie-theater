<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- 공통 -->

<body>
<h1>SNS 글 하나 입력하기 </h1>
 <form  action="keulWriting.do" >
<table border="2">

    <tr>
	
	   <td>제목</td>
	   <td>글쓴이</td>
	   <td>내용</td>
	</tr>
   	<tr>
	   <td><input type="text" name="snsjemok"></td>
	   <td><input type="text" name="snswriter"></td>
	   <td><input type="text" name="snscontent"></td>
	   
	</tr>
	<tr>
		<td colspan="3">
		
	<input type="submit" value="가자-글 하나 입력">
			<input type="reset" value="입력취소">
        
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="getAllinfo.jsp">[모두보기]</a></td>
<td><a href="keulUpdate.jsp">[수정]</a></td>
<td><a href="keulSawonAllforDelete.jsp">[삭제]</a></td>
</tr>
</table>

<!-- // 공통 -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />