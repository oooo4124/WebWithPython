<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ȫ�繫 - ȫ���� ���ϴ� ����� ���� ���� ����Ʈ</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="assets/css/main.css">
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	<body class="">

		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
						
				
							<li><a href="#intro" class="scrolly active"><h2>����</h2></a></li>
							<li><a href="#one" class="scrolly"><h2>�¿������� �м�</h2></a></li>
							<li><a href="#two" class="scrolly"><h2>���̵�</h2></a></li>
							<%if(session.getAttribute("vo")==null) {%>
							<li><a href="#three" class="scrolly"><h2>�α���</h2></a></li>
							<%}else{ %>
							<li><a href="#three"><h2>�α׾ƿ�</h2></a></li>	
							<li><a href="#four"><h2>ȸ������ ����</h2></a></li>	
							
							<%} %>
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<img  src = "logo5.png" width = 840px height = 132px>
							<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>ȫ</b>���� ���ϴ� <b>��</b>���� ���� <b>��</b>�� ����Ʈ</p>
							
							<ul class="actions">
							
								<li><b>&nbsp;&nbsp;&nbsp;&nbsp;</b><a href="#one" class="button scrolly">�� �˾ƺ���</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights inactive">
						<section class="inactive">
							<a href="Online.jsp" class="image" style="background-image: url(&quot;images/onlineW.jpg&quot;); background-position: center center;"><img src="images/onlineW.jpg" alt="" data-position="center center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>�¶��� ���� �м�</h2>
									<p>ī�װ� �� ���� �Խÿ� ���� ����Ʈ ����� �����ϰ�, ����Ʈ�� ��� �湮�� ���� �̿��� ���� �м��Ͽ� ������ ���� ����� ��õ�մϴ�.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">�� �˾ƺ���</a></li>
										<%}else{ %>
										<li><a href="Online.jsp" class="button">�� �˾ƺ���</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
						<section class="inactive">
							<a href="Offline.jsp" class="image" style="background-image: url(&quot;images/offlineW2.png&quot;); background-position: center top;"><img src="images/offlineW2.png" alt="" data-position="top center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>�������� ���� �м�</h2>
									<p>�����α��� ��Ȱ�α� �����͸� �м��Ͽ�, ���� ��󿡰� ���� ������ �ش�ȭ �� �� �ִ� ��ҿ� �ð��� �����͸� �����մϴ�.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">�� �˾ƺ���</a></li>
										<%}else{ %>
										<li><a href="Offline.jsp" class="button">�� �˾ƺ���</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style3 fullscreen inactive">
						<div class="inner">
							<h2>���̵�</h2>
							<p>���� ����Ʈ�� ���� ���� ���۰� ���� ���⿡ ����� �����մϴ�.</p>
							<div class="features inactive">
								
								
								<section style="padding-left:50px;" href = "index.jsp">
								<a href = "../Guide/generic01.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/naver.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">���̹� �Ŀ���ũ ���� �����</h3>
									<p style="display:block;text-indent: 25px;">���̹� �Ŀ���ũ�� ����� ���� ���� ���</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic02.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/naver.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">���̹� �Ŀ���ũ ���� ���� ����</h3>
									<p style="display:block;text-indent: 25px;">���̹� �Ŀ���ũ ���� ������ �ս��� ���� ���</p>
									</a>
								</section>
								<section style="padding-left:50px;">
								<a href = "../Guide/generic03.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/facebook.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">���̽��� ���� �����</h3>
									<p style="display:block;text-indent: 25px;">���̽��Ͽ� ���Ǵ� ���� �����ϴ� ���</p>
									</a>
								</section>
								<section style="padding-left:50px;">
								<a href = "../Guide/generic04.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
			
									<img src=images/google.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Google ���� ����ϱ�</h3>
									<p style="display:block;text-indent: 25px;">Google�� ���� ����ϴ� ���</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic05.html">
									<!-- <span class="icon soli
									d major fa-lock"></span> -->
									<img src=images/kakao.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Kakao ���� ����ϱ�</h3>
									<p style="display:block;text-indent: 25px;">Kakao�� ���� ����ϴ� ���</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic06.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/youtube.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Youtube ���� ����ϱ�</h3>
									<p style="display:block;text-indent: 25px;">Youtube ���� ����ϴ� ���</p>
									</a>
								</section>
							</div>
							<ul class="actions">
								<li><a href="../Guide/generic01.html" class="button">���̵� ����</a></li>
							</ul>
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style2">
						<div class="inner">
						<%if(session.getAttribute("vo")==null){%>
							<h2>�α���</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login">
										<div class="fields">
											<div class="field half">
												<label for="id">���̵�</label>
												<input type="text" name="id" id="id">
											</div>
											<div class="field half">
												<label for="pw">��й�ȣ</label>
												<input type="password" name="pw" id="pw">
											</div>
										</div>
							<p>
								������ �����Ű���? 
								<br><a href="Join.html" data-toggle="modal" data-target="#exampleModal1" class="text-dark"> �׷��ٸ� ���� �����ϼ���!
								</a>
							</p>
							<ul class="actions">
											<li><a  class="button submit">�α���</a></li>
										</ul>
									</form>
								</section>
							</div>
						</div>
						<%}else{%>
							<h1>�α׾ƿ�</h1>
							<p><b>�α׾ƿ�</b> �Ͻðڽ��ϱ�?</p>
							<form method="post" action="../Logout">
								<ul class="actions">
									<li><button>�α׾ƿ�</button></li>
								</ul>
							</form>
						<%} %>
					</section>
				<!-- Four -->
					<%if(session.getAttribute("vo")==null){%>

					<%}else{%>
					<section id="four" class="wrapper style1">
						<div class="inner">
							<h2>����Ȯ��</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login2">
										<div class="fields">
											<div class="field half">
												<label for="pw_check">ȸ������ ������ ���� <br>��й�ȣ�� ���Է����ּ���.</label>
												<input type="password" name="pw_check" id="pw_check" value = "pw_check" >
											</div>
											<div style = "display:none;">
												<input type="text" name="id" id=id" value = <%=session.getAttribute("vo")%> >
											</div>
										</div>
							<ul class="actions">
											<li><a  class="button submit">ȸ������ ����</a></li>
										</ul>
									</form>
								</section>
							</div>
						</div>
					</section>
					<%} %>
				
			</div>


		<!-- Footer -->
			<footer id="footer" class="wrapper style3">
				<div class="inner">
					<ul class="menu">
						<li> Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</footer>

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
</html>