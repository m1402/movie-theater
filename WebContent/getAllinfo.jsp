<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SNS 전체보기</title>
</head>
<body>
<h1>SNS 전체보기</h1>
<table border="2">
	<tr>
		<td colspan="4">
		 
		 <form  action="getAllinfo.do" >
			<input type="submit" value="가자-모두보기">
          </form>
          
		</td>
	</tr>
    <tr>
	   <td>번호</td>
	   <td>제목</td>
	   <td>글쓴이</td>
	   <td>내용</td>
	</tr>
<c:forEach items="${alist1}" var="vo1">  <!-- request scope에 ArrayList alist에 저장해놓은것 -->
   	<tr>
	   <td>${vo1.bunho}</td>
	   <!-- <td>${vo1.snsjemok}</td> --> <!-- 이것으로 작성후 나중에ㅡ 아래로 수정 --> 
	   <td><a href="keulSearchOne.do?snsjemok=${vo1.snsjemok}">${vo1.snsjemok}</a></td>
	   <td>${vo1.snswriter}</td>
	   <td>${vo1.snscontent}</td>
	</tr>

</c:forEach>	

	 </table>
<table border=0>
<tr>
<td><a href="keulWriting.jsp">[입력]</a></td>
</tr>
</table>  
</body>
</html>