<%@page import="com.DAO.PythonDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

$("#loading").hide();




function clickc(form) {
	
	if(form.����.value == "" || form.����.value =="" ){
		alert("��� �׸��� �ּ� �ϳ��̻� �������ּ���");
	}else{
	$("#loading").show();
	$("#btn").hide();
	$("#form1").submit();
	}
}



</script>
<title>�������� �м� - ȫ�繫</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a href="index.jsp" class="title">ȫ�繫</a>
		<nav>
			<ul>
				<li><a href="index.jsp">����ȭ��</a></li>
				<li><a href="Online.jsp">�¶��� �м�</a></li>
				<li><a href="Offline.jsp" class="active">�������� �м�</a></li>
				<li><a href="../Guide/generic01.html">���̵�</a></li>
				<li><a href="../Logout">�α׾ƿ�</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper style2">
			<div class="inner">
				
				<img src = 'offad.png' width = 150px height =100px><h1 class="major">�������� ���� �м�</h1>
				<form id='form1' name=form1 action="../OfflineA2.jsp">

					<h3>���� ��� ���ɴ�(�ʼ�)</h3>

					<input name="����" value="0������9����Ȱ�α���" type="radio">0������ 9�� 
					<input name="����" value="10������14����Ȱ�α���" type="radio">10������ 14�� 
					<input name="����" value="15������19����Ȱ�α���" type="radio">15������ 19�� 
					<input name="����" value="20������24����Ȱ�α���" type="radio">20������ 24�� 
					<input name="����" value="25������29����Ȱ�α���" type="radio">25������ 29�� 
					<input name="����" value="30������34����Ȱ�α���" type="radio">30������ 34��
					<input name="����" value="35������39����Ȱ�α���" type="radio">35������ 39��<br>  
					<input name="����" value="40������44����Ȱ�α���" type="radio">40������ 44��  
					<input name="����" value="45������49����Ȱ�α���" type="radio">45������ 49��   
					<input name="����" value="50������54����Ȱ�α���" type="radio">50������ 54��  
					<input name="����" value="55������59����Ȱ�α���" type="radio">55������ 59��
					<input name="����" value="60������64����Ȱ�α���" type="radio">60������ 64��  
					<input name="����" value="65������69����Ȱ�α���" type="radio">65������ 69��  
					<input name="����" value="70���̻��Ȱ�α���" type="radio">70���̻�  <br>
					<br> 

					<h3>���� ��� ����(�ʼ�)</h3>
					<input name="����" value="����" type="radio">�� <input
						name="����" value="����" type="radio">�� <br> <br>

					<h3>���� ��� ����(����)</h3>
					<%
						PythonDAO dao = new PythonDAO();
						ArrayList<String> arr = dao.print_gu();
						for (int i = 0; i < arr.size(); i++) {
							if(i == 12){
								

					%>
					<br><%} %>
					
					<input name="����" value=<%=arr.get(i)%> 
						type="checkbox"><%=arr.get(i)%> 

					<%
						}
					%>

					<!-- <input type="submit" value="���� �ַ�� �˻�" onclick="click"> -->
					
					<br><br>
					
					<iframe id=loading style = display:none src=https://t1.daumcdn.net/thumb/R600x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fqna%2Fimage%2F1484710380000000008></iframe>
					<br>
					<input id = btn type="button" value="���� �ַ�� �˻�" onclick = 'clickc(this.form)'>

				</form>
				
			</div>
		</section>
	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>