<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
	<script>
		var pc = document.getElementByID("pc")
	</script>
		<title>홍당무 - 홍보를 원하는 당신을 위한 무료 사이트</title>
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
							<li><a href="#intro" class="scrolly active">메인</a></li>
							<li><a href="#one" class="scrolly">온오프라인 분석</a></li>
							<li><a href="#two" class="scrolly">가이드</a></li>
							<%if(session.getAttribute("vo")==null) {%>
							<li><a href="#three" class="scrolly">로그인</a></li>
							<%}else{ %>
							<li><a href="#four">회원정보 수정</a></li>	
							<li><a href="#three">로그아웃</a></li>	
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
							<p><b>홍</b>보를 원하는 <b>당</b>신을 위한 <b>무</b>료 사이트</p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">더 알아보기</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights inactive">
						<section class="inactive">
							<a href="Online.jsp" class="image" style="background-image: url(&quot;images/pic01.jpg&quot;); background-position: center center;"><img src="images/pic01.jpg" alt="" data-position="center center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>온라인 분석</h2>
									<p>카테고리 별 광고 게시에 적합 사이트 목록을 제공하고, 사이트의 평균 방문자 수와 이용자 층을 분석하여 최적의 광고 방법을 추천합니다.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">더 알아보기</a></li>
										<%}else{ %>
										<li><a href="Online.jsp" class="button">더 알아보기</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
						<section class="inactive">
							<a href="Offline.jsp" class="image" style="background-image: url(&quot;images/pic02.jpg&quot;); background-position: center top;"><img src="images/pic02.jpg" alt="" data-position="top center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>오프라인 분석</h2>
									<p>유동인구와 생활인구 데이터를 분석하여, 광고 노출을 극대화 할 수 있는 방법과 장소에 대한 데이터를 제공합니다.</p>
									<ul class="actions">
										<%if(session.getAttribute("vo")==null){ %>
										<li><a href="LoginN.jsp" class="button">더 알아보기</a></li>
										<%}else{ %>
										<li><a href="Offline.jsp" class="button">더 알아보기</a></li>
										<%} %>
									</ul>
								</div>
							</div>
						</section>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style3 fullscreen inactive">
						<div class="inner">
							<h2>가이드</h2>
							<p>대형 사이트에 대한 광고 제작과 견적 산출에 방법을 제공합니다.</p>
							<div class="features inactive">
								<section href = "index.jsp">
								<a href = "../Guide/generic.html">
									<span class="icon solid major fa-code"></span>
									<h3>네이버 파워링크 광고 만들기</h3>
									<p>네이버 파워링크에 사용할 광고 제작 방법을 알려드립니다.</p>
								</section>
								<section>
								<a href = "../Guide/generic2.html">
									<span class="icon solid major fa-lock"></span>
									<h3>네이버 파워링크 견적 쉽게 내기</h3>
									<p>네이버 파워링크에 사용될 예산 견적을 손쉽게 내는 방법을 알려드립니다.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic3.html">
									<span class="icon solid major fa-lock"></span>
									<h3>페이스북 광고 만들기</h3>
									<p>페이스북에 사용되는 광고를 제작하는 방법을 알려드립니다.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic4.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Google 광고 등록하기</h3>
									<p>Google에 광고를 등록하는 방법을 알려드립니다.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic5.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Kakao 광고 등록하기</h3>
									<p>Kakao에 광고를 등록하는 방법을 알려드립니다.</p>
									</a>
								</section>
								<section>
								<a href = "../Guide/generic6.html">
									<span class="icon solid major fa-lock"></span>
									<h3>Youtube 광고 등록하기</h3>
									<p>Youtube 광고를 등록하는 방법을 알려드립니다.</p>
									</a>
								</section>
							</div>
							<ul class="actions">
								<li><a href="../Guide/generic.html" class="button">가이드 보기</a></li>
							</ul>
						</div>
					</section>
					
					<!-- Four -->
					<%if(session.getAttribute("vo")==null){%>

					<%}else{%>
					<section id="four" class="wrapper style1 fullscreen inactive">
						<div class="inner">
							<h2>본인확인</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login2">
										<div class="fields">
											<div class="field half">
												<label for="pw_check">회원정보 수정을 위해 <br>비밀번호를 재입력해주세요.</label>
												<input type="text" name="pw_check" id="pw_check" value = "pw_check" >
											</div>
											<div style = "display:none;">
												<input type="text" name="id" id=id" value = <%=session.getAttribute("vo")%> >
											</div>
										</div>
							<ul class="actions">
											<li><a  class="button submit">회원정보 수정</a></li>
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
							<h2>로그인</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login">
										<div class="fields">
											<div class="field half">
												<label for="id">아이디</label>
												<input type="text" name="id" id="id">
											</div>
											<div class="field half">
												<label for="pw">비밀번호</label>
												<input type="password" name="pw" id="pw">
											</div>
										</div>
							<p>
								계정이 없으신가요? 
								<br><a href="Join.html" data-toggle="modal" data-target="#exampleModal1" class="text-dark"> 그렇다면 지금 가입하세요!
								</a>
							</p>
							<ul class="actions">
											<li><a  class="button submit">로그인</a></li>
										</ul>
									</form>
								</section>
							</div>
						</div>
						<%}else{%>
							<h1>로그아웃</h1>
							<p><b>로그아웃</b> 하시겠습니까?</p>
							<form method="post" action="../Logout">
								<ul class="actions">
									<li><button>로그아웃</button></li>
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