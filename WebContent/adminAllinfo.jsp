<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<h1>��ȭ ������ ���</h1>
<table border="2">
	<tr>
		<td colspan="5">
		 
		 <form  action="adminAllinfo.kms2" >
			<input type="submit" value="��ȭ ����Ʈ ��� ����">
          </form>
          
		</td>
	</tr>
    <tr>
	   <td>No.</td>
	   <td>��ȭ����</td>
	   <td>����</td>
	   <td>������</td>
	   <td>������</td>
	</tr>
<c:forEach items="${alist1}" var="vo1">  <!-- request scope�� ArrayList alist�� �����س����� -->
   	<tr>
	   <td>${vo1.num}</td>
 
	   <td><a href="adminSearchOne.kms2?num=${vo1.num}">${vo1.title}</a></td>
	   <td>${vo1.dir}</td>
	   <td>${vo1.bookp}</td>
	   <td>${vo1.day}</td>
	</tr>

</c:forEach>	

	 </table>
<table border=0>
<tr>
<td><a href="adminWriting.jsp">[�Է�]</a></td>
</tr>
</table>

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />