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
	
	if(form.나이.value == "" || form.성별.value =="" ){
		alert("모든 항목을 최소 하나이상 선택해주세요");
	}else{
	$("#loading").show();
	$("#btn").hide();
	$("#form1").submit();
	}
}



</script>
<title>오프라인 분석 - 홍당무</title>
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
		<a href="index.jsp" class="title">홍당무</a>
		<nav>
			<ul>
				<li><a href="index.jsp">메인화면</a></li>
				<li><a href="Online.jsp">온라인 분석</a></li>
				<li><a href="Offline.jsp" class="active">오프라인 분석</a></li>
				<li><a href="../Guide/generic01.html">가이드</a></li>
				<li><a href="../Logout">로그아웃</a></li>
			</ul>
		</nav>
	</header>

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<section id="main" class="wrapper style2">
			<div class="inner">
				
				<img src = 'offad.png' width = 150px height =100px><h1 class="major">오프라인 광고 분석</h1>
				<form id='form1' name=form1 action="../OfflineA2.jsp">

					<h3>광고 대상 연령대(필수)</h3>

					<input name="나이" value="0세부터9세생활인구수" type="radio">0세부터 9세 
					<input name="나이" value="10세부터14세생활인구수" type="radio">10세부터 14세 
					<input name="나이" value="15세부터19세생활인구수" type="radio">15세부터 19세 
					<input name="나이" value="20세부터24세생활인구수" type="radio">20세부터 24세 
					<input name="나이" value="25세부터29세생활인구수" type="radio">25세부터 29세 
					<input name="나이" value="30세부터34세생활인구수" type="radio">30세부터 34세
					<input name="나이" value="35세부터39세생활인구수" type="radio">35세부터 39세<br>  
					<input name="나이" value="40세부터44세생활인구수" type="radio">40세부터 44세  
					<input name="나이" value="45세부터49세생활인구수" type="radio">45세부터 49세   
					<input name="나이" value="50세부터54세생활인구수" type="radio">50세부터 54세  
					<input name="나이" value="55세부터59세생활인구수" type="radio">55세부터 59세
					<input name="나이" value="60세부터64세생활인구수" type="radio">60세부터 64세  
					<input name="나이" value="65세부터69세생활인구수" type="radio">65세부터 69세  
					<input name="나이" value="70세이상생활인구수" type="radio">70세이상  <br>
					<br> 

					<h3>광고 대상 성별(필수)</h3>
					<input name="성별" value="남자" type="radio">남 <input
						name="성별" value="여자" type="radio">여 <br> <br>

					<h3>광고 대상 지역(선택)</h3>
					<%
						PythonDAO dao = new PythonDAO();
						ArrayList<String> arr = dao.print_gu();
						for (int i = 0; i < arr.size(); i++) {
							if(i == 12){
								

					%>
					<br><%} %>
					
					<input name="지역" value=<%=arr.get(i)%> 
						type="checkbox"><%=arr.get(i)%> 

					<%
						}
					%>

					<!-- <input type="submit" value="광고 솔루션 검색" onclick="click"> -->
					
					<br><br>
					
					<iframe id=loading style = display:none src=https://t1.daumcdn.net/thumb/R600x0/?fname=http%3A%2F%2Ft1.daumcdn.net%2Fqna%2Fimage%2F1484710380000000008></iframe>
					<br>
					<input id = btn type="button" value="광고 솔루션 검색" onclick = 'clickc(this.form)'>

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