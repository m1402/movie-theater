<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<body>
<h1>��ȭ �ϳ� �Է��ϱ� </h1>
 <form  action="adminUpdating.kms2" >
  
<table border="2">

    <tr>
	
	   <td>No.</td>
	   <td>��ȭ����</td>
	   <td>����</td>
	   <td>������</td>
	   <td>������</td>
	   
	</tr>
   	<tr>
   		<td><input type="text" name="num" value="${sv1.num}"> </td>
   	  <input type="hidden" name="title" value="${sv1.title}">
   	   <td>${sv1.title}</td>
	   <td><input type="text" name="dir" value="${sv1.dir}" ></td>
	   <td><input type="text" name="bookp" value="${sv1.bookp}"></td>
	   <td><input type="text" name="day" value="${sv1.day}"></td>
	   
	</tr>
	<tr>
		<td colspan="5">
		
	<input type="submit" value="��ȭ ����">
			<input type="reset" value="���� ���">
        
  </td>
	</tr>
          
	 </table>
	 </form>
<table border=0>
<tr>
<td><a href="adminAllinfo.kms2">[��κ���]</a></td>
<td><a href="adminUpdate.kms2">[����]</a></td>
<td><a href="adminDeleting.kms2?num=${sv1.num}">[����]</a></td>
</tr>
</table>

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />