<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>SNS 글 하나 입력하기 </h1>
 <form  action="keulUpdating.do" >
  
<table border="2">

    <tr>
	
	   <td>제목</td>
	   <td>글쓴이</td>
	   <td>내용</td>
	</tr>
   	<tr>
   	  <input type="hidden" name="snsjemok" value="${sv1.snsjemok}">
   	   <td>${sv1.snsjemok}</td>
	   <td><input type="text" name="snsjemok" value="${sv1.snswriter}" ></td>
	   <td><input type="text" name="snscontent" value="${sv1.snscontent}"></td>
	   
	</tr>
	<tr>
		<td colspan="3">
		
	<input type="submit" value="가자-글 하나 수정">
			<input type="reset" value="수정취소">
        
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
</body>
</html>