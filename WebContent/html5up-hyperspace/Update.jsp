<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="assets/css/main.css" />
<meta charset="EUC-KR" content = "no-cache">
<title>ȸ������ - ȫ�繫</title>
</head>
<body>
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>
					<li><a href="index.jsp">����</a></li>
					<li><a href="#one">�¿������� �м�</a></li>
					<li><a href="#two">�ΰ����</a></li>
					<li><a href="#three">�α���</a></li>
				</ul>
			</nav>
		</div>
	</section>
<div id="wrapper">
<%userVO vo = (userVO)session.getAttribute("vo"); %>
	<section class="wrapper style1 fullscreen">
		<div class="inner">
			<h2>ȸ������</h2>
			<div class="style1">
				<section>
					<form method="post" action="../Update">
						<div class="fields">
							<div class="field half">
								<input type="text" name="id" placeholder="���̵�" value = <%=vo.getId() %> readonly = "readonly"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="pw" placeholder="��й�ȣ" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="pw_check" placeholder="��й�ȣ Ȯ��" required="required">	
								<br>
							</div>
							<div class="field half">
								<input type="text" name="name" placeholder="�̸�" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="hp" placeholder="����ó" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="email" placeholder="EMAIL" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="adr" placeholder="�ּ�" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="chief" placeholder="��ü ��ǥ�� �̸�" required="required">
								<br>
							</div>
							<div class="field half">
								<input type="text" name="corp_name" placeholder="��ü �̸�" required="required">
								<br>
							</div>
							<div class="field half">
								<input type="text" name="corp_adr" placeholder="��ü �ּ�" required="required">
								<br>
							</div>
							<div class="field">
								<input type="submit" value="ȸ������ ����">
								</form>
								<form action='../acdel'>
								<input type="submit" value="ȸ�� Ż��">
								</form>
							</div>
						</div>
					
					
				</section>
			</div>
		</div>
	</section>
</div>
</body>
</html>