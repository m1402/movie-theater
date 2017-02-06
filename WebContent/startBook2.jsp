<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/jsp/common/header.jsp" flush="false" />
<!-- ���� -->

<!-- ������ ���� -->

<!-- script -->
<script type="text/javascript"
	src="static/js/book/dt/jquery-1.4.4.min.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery-ui-1.8.10.custom.min.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery.ui.datepicker.js"></script>
<script type="text/javascript"
	src="static/js/book/dt/jquery.ui.widget.js"></script>

<link rel="stylesheet" type="text/css"
	href="static/js/book/dt/jquery.ui.datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="static/js/book/dt/jquery.ui.all.css" />


<script type="text/javascript" src="jquery1/jquery-3.1.1.js"></script>
<script>
	$(function() {
		var soo = [ 1, 2, 3, 4 ]; //0,1,2.. //1,2,3,4...
		$.each(soo, function(index, value) {
			$('#title' + value).click(function() {
				if ($('#stitle' + value).is(':hidden')) //hide����
					$('#stitle' + value).show(); //������
				else
					//show ���¸�?
					$('#stitle' + value).hide(); //����
			});
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		$("#dtp_3").datepicker({
			changeYear : true,
			changeMonth : true,
			dateFormat : 'yy-mm-dd'
		//20121225 (�⺻:12/25/2012)
		});
	});
</script>

<!-- body -->

<h1>��ȭ ����</h1>
<form name=form1>
	<br>
	<br>
	<h3>1. ��ȭ����</h3>
	<select>
		<option>����Ʈ</option>
		<option>���۵� ����</option>
		<option>����</option>
		<option>��Ƴ�</option>
		<option>��Ÿ����</option>
	</select>

	<%-- <div id="menubar">
		<table align="center">
			<colgroup>
				<col width=125 />
				<col width="25%" />
				<col width="25%" />
				<col width="25%" />
			</colgroup>
			<thead>
				<tr>
					<th>No.</th>
					<th>��ȭ����</th>
					<th>����</th>
					<th>������</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th><a href="#">8</a></th>
					<th><a href="#">����</a></th>
					<th><a href="#">�輺��</a></th>
					<th><a href="#">25</a></th>
				</tr>
			</tbody>
		</table>
	</div> --%>
	
	<h3>2. ���弱��</h3>
	<select>
		<option>��ķ�ó׸� ����</option>
		<option>��ķ�ó׸� ��</option>
		<option>��ķ�ó׸� ����</option>
		<option>��ķ�ó׸� ���</option>
		<option>��ķ�ó׸� ȫ��</option>
	</select>

	<%-- <div id="menubar2">
		<table align="center">
			<colgroup>
				<col width=125 />
				<col width="20%" />
				<col width="20%" />
				<col width="20%" />
				<col width="20%" />
			</colgroup>
			<tbody>
				<tr>
					<th><a href="#">��ķ�ó׸� ����</a></th>
					<th><a href="#">��ķ�ó׸� ��</a></th>
					<th><a href="#">��ķ�ó׸� ����</a></th>
					<th><a href="#">��ķ�ó׸� ���</a></th>
					<th><a href="#">��ķ�ó׸� ȫ��</a></th>
				</tr>
			</tbody>
		</table>
	</div> --%>
	<h3>3. ��¥����</h3>
	<br>
	<div>
		<input type="text" id="dtp_3">
	</div>
</form>

<div id="title1">
	<h3>4. �󿵽ð�ǥ</h3>
</div>

<div id="stitle1" style="display: none">
	<ul>
		<img src="theater_titetable.jpg" width="400" id=timetable>
		<li>�ð� ���� : <input type="text" width=150 id="dtp2"></li>
	</div>
  
<div id="title2"> <h3>5. �ο�����</h3> </div>
   
  <div id="stitle2"  style="display:none">
    <ul>
   	  <table>
   	  	<tbody>
   	  	
   	  	</tbody>
      <li>�ο� �� : <input type="text" width=150 id="dtp2"></li>
      </table>
    </ul>
  </div>
  
<div id="title3"> <h3>6. �¼�����</h3> </div>
   
  <div id="stitle3"  style="display:none">
    <ul>
      <img src="theater_seat.JPG" width="500" id=yokeo>
      <li>�¼���ȣ �Է� : <input type="text" width=150 id="dtp2"></li>
      
    </ul>
  </div>
  <br>
  <br>
  <br>
  <input type=submit value="����"> <input type=submit value="���">  
  <!-- // ������ ���� --> <!-- // ���� -->
			<jsp:include page="/jsp/common/footer.jsp" flush="false" />