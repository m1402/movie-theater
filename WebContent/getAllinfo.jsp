<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>SNS ��ü����</title>
</head>
<body>
<h1>SNS ��ü����</h1>
<table border="2">
	<tr>
		<td colspan="4">
		 
		 <form  action="getAllinfo.do" >
			<input type="submit" value="����-��κ���">
          </form>
          
		</td>
	</tr>
    <tr>
	   <td>��ȣ</td>
	   <td>����</td>
	   <td>�۾���</td>
	   <td>����</td>
	</tr>
<c:forEach items="${alist1}" var="vo1">  <!-- request scope�� ArrayList alist�� �����س����� -->
   	<tr>
	   <td>${vo1.bunho}</td>
	   <!-- <td>${vo1.snsjemok}</td> --> <!-- �̰����� �ۼ��� ���߿��� �Ʒ��� ���� --> 
	   <td><a href="keulSearchOne.do?snsjemok=${vo1.snsjemok}">${vo1.snsjemok}</a></td>
	   <td>${vo1.snswriter}</td>
	   <td>${vo1.snscontent}</td>
	</tr>

</c:forEach>	

	 </table>
<table border=0>
<tr>
<td><a href="keulWriting.jsp">[�Է�]</a></td>
</tr>
</table>  
</body>
</html>