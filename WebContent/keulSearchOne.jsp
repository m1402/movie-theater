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
<h1>SNS �� �ϳ� �Է��ϱ� </h1>
 <form  action="keulUpdating.do" >
<table border="2">

    <tr>
	
	   <td>����</td>
	   <td>�۾���</td>
	   <td>����</td>
	</tr>
   	<tr>
   	 	<td><input type="hidden" name="snsjemok" value="${sv1.snsjemok}"></td>
	   <td><input type="text" name="snsjemok" value="${sv1.snsjemok}"></td>
	   <td><input type="text" name="snswriter" value="${sv1.snswriter}"></td>
	   <td><input type="text" name="snscontent" value="${sv1.snscontent}"></td>
	   
	</tr>
	<tr>
		<td colspan="3">
		
	<input type="submit" value="����-�����Ϸ�">
			<input type="reset" value="�������">
        <!-- �����ۼ��Ϸ�����ȴ�. dao�� update_sns()����� -->
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="getAllinfo.jsp">[��κ���]</a></td>
<td><a href="keulDeleting.do?snsjemok=${sv1.snsjemok}">[����]</a></td>
</tr>
</table>  
</body>
</html>