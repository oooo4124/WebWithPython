<%@page import="com.VO.userVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="assets/css/main.css" />
<meta charset="EUC-KR" content = "no-cache">
<title>회원가입 - 홍당무</title>
</head>
<body>
	<section id="sidebar">
		<div class="inner">
			<nav>
				<ul>
					<li><a href="index.jsp">메인</a></li>
					<li><a href="#one">온오프라인 분석</a></li>
					<li><a href="#two">부가기능</a></li>
					<li><a href="#three">로그인</a></li>
				</ul>
			</nav>
		</div>
	</section>
<div id="wrapper">
<%userVO vo = (userVO)session.getAttribute("vo"); %>
	<section class="wrapper style1 fullscreen">
		<div class="inner">
			<h2>회원가입</h2>
			<div class="style1">
				<section>
					<form method="post" action="../Update">
						<div class="fields">
							<div class="field half">
								<input type="text" name="id" placeholder="아이디" value = <%=vo.getId() %> readonly = "readonly"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="pw" placeholder="비밀번호" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="pw_check" placeholder="비밀번호 확인" required="required">	
								<br>
							</div>
							<div class="field half">
								<input type="text" name="name" placeholder="이름" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="hp" placeholder="연락처" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="email" placeholder="EMAIL" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="adr" placeholder="주소" required="required"> 
								<br>
							</div>
							<div class="field half">
								<input type="text" name="chief" placeholder="업체 대표자 이름" required="required">
								<br>
							</div>
							<div class="field half">
								<input type="text" name="corp_name" placeholder="업체 이름" required="required">
								<br>
							</div>
							<div class="field half">
								<input type="text" name="corp_adr" placeholder="업체 주소" required="required">
								<br>
							</div>
							<div class="field">
								<input type="submit" value="회원정보 수정">
								</form>
								<form action='../acdel'>
								<input type="submit" value="회원 탈퇴">
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