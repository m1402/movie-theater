<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<body>
<h1>��ȭ �ϳ� �Է��ϱ� </h1>
 <form  action="adminWriting.kms2" >
<table border="2">

    <tr>
	
	   <td>No.</td>
	   <td>��ȭ����</td>
	   <td>����</td>
	   <td>������</td>
	   <td>������</td>
	   
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
		
	<input type="submit" value="��ȭ �Է�">
			<input type="reset" value="�Է� ���">
        
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="adminAllinfo.kms2">[��κ���]</a></td>
</tr>
</table>

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />