<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<body>
<h1>SNS �� �ϳ� �Է��ϱ� </h1>
 <form  action="keulWriting.do" >
<table border="2">

    <tr>
	
	   <td>����</td>
	   <td>�۾���</td>
	   <td>����</td>
	</tr>
   	<tr>
	   <td><input type="text" name="snsjemok"></td>
	   <td><input type="text" name="snswriter"></td>
	   <td><input type="text" name="snscontent"></td>
	   
	</tr>
	<tr>
		<td colspan="3">
		
	<input type="submit" value="����-�� �ϳ� �Է�">
			<input type="reset" value="�Է����">
        
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="getAllinfo.jsp">[��κ���]</a></td>
<td><a href="keulUpdate.jsp">[����]</a></td>
<td><a href="keulSawonAllforDelete.jsp">[����]</a></td>
</tr>
</table>

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />