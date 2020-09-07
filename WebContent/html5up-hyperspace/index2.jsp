<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ȫ�繫 : ȫ���� ���ϴ� ����� ���� ���� ����Ʈ</title>
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
							<li><a href="#intro" class="scrolly active">����</a></li>
							<li><a href="#one" class="scrolly">�¿������� �м�</a></li>
							<li><a href="#two" class="scrolly">�ΰ����</a></li>
							<%if(session.getAttribute("vo")==null) {%>
							<li><a href="#three" class="scrolly">�α���</a></li>
							<%}else{ %>
							<li><a href="#three">�α׾ƿ�</a></li>	
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
							<h1>ȫ�繫</h1>
							<p><b>ȫ</b>���� ���ϴ� <b>��</b>���� ���� <b>��</b>�� ����Ʈ</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">Learn more</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights inactive">
						<section class="inactive">
							<a href="Online.jsp" class="image" style="background-image: url(&quot;images/pic01.jpg&quot;); background-position: center center;"><img src="images/pic01.jpg" alt="" data-position="center center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>�¶��� �м�</h2>
									<p>ī�װ� �� ���� �Խÿ� ���� ����Ʈ ����� �����ϰ�, ����Ʈ�� ��� �湮�� ���� �̿��� ���� �м��Ͽ� ������ ���� ����� ��õ�մϴ�.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">Learn more</a></li>
										<%}else{ %>
										<li><a href="Online.jsp" class="button">Learn more</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
						<section class="inactive">
							<a href="Offline.jsp" class="image" style="background-image: url(&quot;images/pic02.jpg&quot;); background-position: center top;"><img src="images/pic02.jpg" alt="" data-position="top center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>�������� �м�</h2>
									<p>�����α��� ��Ȱ�α� �����͸� �м��Ͽ�, ���� ������ �ش�ȭ �� �� �ִ� ����� ��ҿ� ���� �����͸� �����մϴ�.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">Learn more</a></li>
										<%}else{ %>
										<li><a href="Offline.jsp" class="button">Learn more</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style3 fullscreen inactive">
						<div class="inner">
							<h2>�ΰ����</h2>
							<p>�����ֿ��� ����Ǵ� �߰����� ��ɵ��� �����մϴ�.</p>
							<div class="features inactive">
								<section>
									<span class="icon solid major fa-code"></span>
									<h3>���� ����� ����</h3>
									<p>����ڰ� �Է��� �����͸� �������� ���� �ҿ�� ���� ����� �����Ͽ� �����մϴ�.</p>
								</section>
								<section>
									<span class="icon solid major fa-lock"></span>
									<h3>���� ��Ŀ� ���� ���� ��</h3>
									<p>���� ��Ŀ� ���� �޶����� ���� ����� ���Ͽ� �����Ͽ� ���� ���꿡 ������ ���� ����� ��õ�մϴ�.</p>
								</section>
							</div>
							<ul class="actions">
								<%if(session.getAttribute("vo")==null){ %>
								<li><a href="LoginN.jsp" class="button">Learn more</a></li>
								<%}else{ %>
								<li><a href="Sub.jsp" class="button">Learn more</a></li>
								<%} %>
							</ul>
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style1 fullscreen inactive">
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
												<input type="text" name="pw" id="pw">
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
			</div>


		<!-- Footer -->
			<footer id="footer" class="wrapper style1-alt">
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