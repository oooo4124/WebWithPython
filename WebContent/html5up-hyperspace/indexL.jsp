<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
	<script>
		var pc = document.getElementByID("pc")
	</script>
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
							<li><a href="#intro" class="scrolly active">����</a></li>
							<li><a href="#one" class="scrolly">�¿������� �м�</a></li>
							<li><a href="#two" class="scrolly">���̵�</a></li>
							<%if(session.getAttribute("vo")==null) {%>
							<li><a href="#three" class="scrolly">�α���</a></li>
							<%}else{ %>
							<li><a href="#four">ȸ������ ����</a></li>	
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
							<img  src = "logo.png" width = 756px height = 132px>
							<p><b>ȫ</b>���� ���ϴ� <b>��</b>���� ���� <b>��</b>�� ����Ʈ</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">�� �˾ƺ���</a></li>
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
										<li><a href="LoginN.jsp" class="button">�� �˾ƺ���</a></li>
										<%}else{ %>
										<li><a href="Online.jsp" class="button">�� �˾ƺ���</a></li>
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
								<section href = "index.jsp">
								<a href = "../Guide/generic.html">
									<span class="icon solid major fa-code"></span>
									<h3>���̹� �Ŀ���ũ ���� �����</h3>
									<p>���̹� �Ŀ���ũ�� ����� ���� ���� ����� �˷��帳�ϴ�.</p>
								</section>
								<section>
								<a href = "../Guide/generic2.html">
									<span class="icon solid major fa-lock"></span>
									<h3>���̹� �Ŀ���ũ ���� ���� ����</h3>
									<p>���̹� �Ŀ���ũ�� ���� ���� ������ �ս��� ���� ����� �˷��帳�ϴ�.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic3.html">
									<span class="icon solid major fa-lock"></span>
									<h3>���̽��� ���� �����</h3>
									<p>���̽��Ͽ� ���Ǵ� ���� �����ϴ� ����� �˷��帳�ϴ�.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic4.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Google ���� ����ϱ�</h3>
									<p>Google�� ���� ����ϴ� ����� �˷��帳�ϴ�.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic5.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Kakao ���� ����ϱ�</h3>
									<p>Kakao�� ���� ����ϴ� ����� �˷��帳�ϴ�.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic6.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Youtube ���� ����ϱ�</h3>
									<p>Youtube ���� ����ϴ� ����� �˷��帳�ϴ�.</p>
									</a>
								</section>
							</div>
							<ul class="actions">
								<li><a href="../Guide/generic.html" class="button">���̵� ����</a></li>
							</ul>
						</div>
					</section>
					
					<!-- Four -->
					<%if(session.getAttribute("vo")==null){%>

					<%}else{%>
					<section id="four" class="wrapper style1 fullscreen inactive">
						<div class="inner">
							<h2>����Ȯ��</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login2">
										<div class="fields">
											<div class="field half">
												<label for="pw_check">ȸ������ ������ ���� <br>��й�ȣ�� ���Է����ּ���.</label>
												<input type="text" name="pw_check" id="pw_check" value = "pw_check" >
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