<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
	<head>
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
						
				
							<li><a href="#intro" class="scrolly active"><h2>메인</h2></a></li>
							<li><a href="#one" class="scrolly"><h2>온오프라인 분석</h2></a></li>
							<li><a href="#two" class="scrolly"><h2>가이드</h2></a></li>
							<%if(session.getAttribute("vo")==null) {%>
							<li><a href="#three" class="scrolly"><h2>로그인</h2></a></li>
							<%}else{ %>
							<li><a href="#three"><h2>로그아웃</h2></a></li>	
							<li><a href="#four"><h2>회원정보 수정</h2></a></li>	
							
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
							<p>&nbsp;&nbsp;&nbsp;&nbsp;<b>홍</b>보를 원하는 <b>당</b>신을 위한 <b>무</b>료 사이트</p>
							
							<ul class="actions">
							
								<li><b>&nbsp;&nbsp;&nbsp;&nbsp;</b><a href="#one" class="button scrolly">더 알아보기</a></li>
							</ul>
						</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper style2 spotlights inactive">
						<section class="inactive">
							<a href="Online.jsp" class="image" style="background-image: url(&quot;images/onlineW.jpg&quot;); background-position: center center;"><img src="images/onlineW.jpg" alt="" data-position="center center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>온라인 광고 분석</h2>
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
							<a href="Offline.jsp" class="image" style="background-image: url(&quot;images/offlineW2.png&quot;); background-position: center top;"><img src="images/offlineW2.png" alt="" data-position="top center" style="display: none;"></a>
							<div class="content">
								<div class="inner">
									<h2>오프라인 광고 분석</h2>
									<p>유동인구와 생활인구 데이터를 분석하여, 광고 대상에게 광고 노출을 극대화 할 수 있는 장소와 시간대 데이터를 제공합니다.</p>
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
								
								
								<section style="padding-left:50px;" href = "index.jsp">
								<a href = "../Guide/generic01.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/naver.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">네이버 파워링크 광고 만들기</h3>
									<p style="display:block;text-indent: 25px;">네이버 파워링크에 사용할 광고 제작 방법</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic02.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/naver.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">네이버 파워링크 견적 쉽게 내기</h3>
									<p style="display:block;text-indent: 25px;">네이버 파워링크 예산 견적을 손쉽게 내는 방법</p>
									</a>
								</section>
								<section style="padding-left:50px;">
								<a href = "../Guide/generic03.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/facebook.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">페이스북 광고 만들기</h3>
									<p style="display:block;text-indent: 25px;">페이스북에 사용되는 광고를 제작하는 방법</p>
									</a>
								</section>
								<section style="padding-left:50px;">
								<a href = "../Guide/generic04.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
			
									<img src=images/google.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Google 광고 등록하기</h3>
									<p style="display:block;text-indent: 25px;">Google에 광고를 등록하는 방법</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic05.html">
									<!-- <span class="icon soli
									d major fa-lock"></span> -->
									<img src=images/kakao.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Kakao 광고 등록하기</h3>
									<p style="display:block;text-indent: 25px;">Kakao에 광고를 등록하는 방법</p>
									</a>
								</section>
								
								<section style="padding-left:50px;">
								<a href = "../Guide/generic06.html">
									<!-- <span class="icon solid major fa-lock"></span> -->
									<img src=images/youtube.png width = 50px height=50px style="float:left;display:inline-block;">
									<h3 style="display:block;text-indent: 25px;">Youtube 광고 등록하기</h3>
									<p style="display:block;text-indent: 25px;">Youtube 광고를 등록하는 방법</p>
									</a>
								</section>
							</div>
							<ul class="actions">
								<li><a href="../Guide/generic01.html" class="button">가이드 보기</a></li>
							</ul>
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style2">
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
				<!-- Four -->
					<%if(session.getAttribute("vo")==null){%>

					<%}else{%>
					<section id="four" class="wrapper style1">
						<div class="inner">
							<h2>본인확인</h2>
							<div class="split style1">
								<section>
									<form method="post" action="../Login2">
										<div class="fields">
											<div class="field half">
												<label for="pw_check">회원정보 수정을 위해 <br>비밀번호를 재입력해주세요.</label>
												<input type="password" name="pw_check" id="pw_check" value = "pw_check" >
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