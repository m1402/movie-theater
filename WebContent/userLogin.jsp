<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->
	<fieldset border="2";>
		<legend>
			<h1>�α���</h1>
		</legend>
		<form action="userLoginCheck.lhj" method="post">
			<table style="border: 1px; margin: auto; text-align: center;">
				<tr>
					<th><b><strong> <h4>���̵�</h4></strong> <center><input name="id" type="text" ></center></th> <br />
			<br /> 
			<table style="border: 1px; margin: auto; text-align: center;">
				<br>
				<tr>
					<th><strong><h4>�н�����</h4></strong> <center><input name="pw" type="password" ></center></th>
			</table>
            

            <table style="border: 1px; margin: auto; text-align: center;">
				<br>
				<tr>
					<th><button type="submit"><span>�α���</span></button></th>
                  
                    <th><button type="button" onClick="location.href='userJoin.jsp'"><span>ȸ������</span></button></th>
				</tr>
			</table>
		</form>
	</fieldset>
<!-- // ������ ���� -->

<!-- // ���� -->
<jsp:include page="/jsp/common/footer.jsp" flush="false" />