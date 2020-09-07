<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function categoryChange(e){
		var small_a = ["게임","국내여행","세계여행","자동차","취미","스포츠","친목","사진","맛집"];
		var small_b = ["만화, 애니","방송","미술, 디자인","영화","음악","문학, 책","공연, 전시","드라마","스타, 연예인"];
		var small_c = ["반려동물","쇼핑","생활","요리, 레시피","패션, 미용","육아, 결혼","일상, 생각","좋은글, 이미지","인테리어, DIY","상품리뷰","원예, 재배"];
		var small_d = ["건강, 의학","IT, 컴퓨터","교육 학문","어학, 외국어","비즈니스, 경제","사회, 정치"];
		var target = document.getElementById("small");
		
		if(e.value == "취미,여가,여행") var d = small_a;
		else if(e.value == "엔터테인먼트,예술") var d = small_b;
		else if(e.value == "생활,노하우,쇼핑") var d = small_c;
		else if(e.value == "지식,동향") var d = small_d;
		
		target.options.length = 0;
		
		for(x in d){
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
</script>
		<title>온라인 분석 - 홍당무</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	
		<!-- Header -->
			<header id="header">
			
				<a href="index.jsp" class="title">홍당무</a>
				<nav>
					<ul>
						<li><a href="index.jsp">메인화면</a></li>
						<li><a href="Online.jsp" class="active">온라인 분석</a></li>
						<li><a href="Offline.jsp">오프라인 분석</a></li>
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
							<img src = onlineW.png width = 155px height = 120px>
							<h1 class="major">온라인 광고 분석</h1>
							<!-- 
							<span class="image fit"><img src="images/pic04.jpg" alt="" /></span>
							<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique.</p>
							<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>
							 -->
							 
							 <form action="../OnlineA.jsp">
								
								<div class = "fields">
								<div class="field half">
								<h3>대분류</h3>
									<select name="대분류" onchange="categoryChange(this)">
									<option>대분류 선택</option>
									<option value="취미,여가,여행">취미,여가,여행</option>
									<option value="엔터테인먼트,예술">엔터테인먼트,예술</option>
									<option value="생활,노하우,쇼핑">생활,노하우,쇼핑</option>
									<option value="지식,동향">지식,동향</option>
									</select>
									<br>
								</div>
								
								<div class="field half">
								<h3>소분류</h3>
									<select id="small" name="소분류">
									<option>소분류 선택</option>
									</select>
									<br>
								</div>
									
								<div class="field half">
								<h3>광고 대상 성별</h3>
									남<input name="성별" value="남" type="radio">
									&nbsp&nbsp여<input name="성별" value="여" type="radio">
								
								</div>
								
								
								<div class="field half">
								<h3>광고 대상 연령대</h3>
									20대미만<input name="나이" value="20대미만" type="checkbox">
									&nbsp&nbsp20대<input name="나이" value="20대" type="checkbox">
									&nbsp&nbsp30대<input name="나이" value="30대" type="checkbox">
									&nbsp&nbsp40대<input name="나이" value="40대" type="checkbox">
									&nbsp&nbsp50대이상<input name="나이" value="50대이상" type="checkbox">
									<br>
									<br>
								</div>
								
								
								
								<div class="field half">
								<h3>광고 목적</h3>
									매출 연계성<input name="목적" value="매출 연계성" type="checkbox">
									&nbsp&nbsp브랜드 홍보 및 상품 정보 안내<input name="목적" value="브랜드 홍보 및 상품 정보 안내" type="checkbox">
									&nbsp&nbsp고객관리<input name="목적" value="고객관리" type="checkbox">
									<br>
									타겟 도달성<input name="목적" value="타겟 도달성" type="checkbox">
									&nbsp&nbsp즉각적인 반응<input name="목적" value="즉각적인 반응" type="checkbox">
									&nbsp&nbsp자유로운 광고 표현<input name="목적" value="자유로운 광고 표현" type="checkbox">
									<br>
									광고 몰입도<input name="목적" value="광고 몰입도" type="checkbox">
									&nbsp&nbsp광고 요금 적정성<input name="목적" value="광고 요금 적정성" type="checkbox">
									<br>
									<br>
								</div>
								
								<div class="field half">
								<h3>광고 종류</h3>
									검색 광고<input name="타입" value="검색" type="checkbox">
									&nbsp&nbsp플로팅 광고<input name="타입" value="플로팅" type="checkbox">
									&nbsp&nbsp동영상 광고<input name="타입" value="동영상" type="checkbox">
									&nbsp&nbspSNS 광고<input name="타입" value="SNS" type="checkbox">
									<br>
									배너 광고<input name="타입" value="배너" type="checkbox">
									&nbsp&nbsp바이럴 광고<input name="타입" value="바이럴" type="checkbox">
									&nbsp&nbsp보상형 광고<input name="타입" value="보상형" type="checkbox">
									&nbsp&nbspPPL 광고<input name="타입" value="PPL" type="checkbox">
									<br>
									<br>
								
								
								
								</div>
									<div class = "field half">
									<h3>"정확한 솔루션 제공을 위해 가급적 상세히 조건을 입력해주십시오."</h3><br>
									
									
									<input type="submit" value="광고 솔루션 검색" onclick="click">
									</div>
								</div>
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
