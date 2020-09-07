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
	
	if(e.value == "a") var d = small_a;
	else if(e.value == "b") var d = small_b;
	else if(e.value == "c") var d = small_c;
	else if(e.value == "d") var d = small_d;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="test2.jsp">
	<h3>대분류</h3>
	
		<select name="대분류" onchange="categoryChange(this)">
		<option>대분류 선택</option>
		<option value="a">취미,여가,여행</option>
		<option value="b">엔터테인먼트,예술</option>
		<option value="c">생활,노하우,쇼핑</option>
		<option value="d">지식,동향</option>
		</select>
	<h3>소분류</h3>
		<select id="small" name="소분류">
		<option>소분류 선택</option>
		</select>
		
		<h3>광고 대상 연령대</h3>
		20대미만<input name="나이" value="20-" type="checkbox">
		20대<input name="나이" value="20" type="checkbox">
		30대<input name="나이" value="30" type="checkbox">
		40대<input name="나이" value="40" type="checkbox">
		50대이상<input name="나이" value="50" type="checkbox">
		<h3>광고 대상 성별</h3>
		남<input name="성별" value="남" type="radio">
		여<input name="성별" value="여" type="radio">
		모두<input name="성별" value="모두" type="radio">
		<h3>광고 목적</h3>
		매출 연계성<input name="목적" value="매출 연계성" type="checkbox">
		브랜드 홍보 및 상품 정보 안내<input name="목적" value="브랜드 홍보 및 상품 정보 안내" type="checkbox">
		고객관리<input name="목적" value="고객관리" type="checkbox">
		타겟 도달성<input name="목적" value="타겟 도달성" type="checkbox"><br>
		즉각적인 반응<input name="목적" value="즉각적인 반응" type="checkbox">
		자유로운 광고 표현<input name="목적" value="자유로운 광고 표현" type="checkbox">
		광고 몰입도<input name="목적" value="광고 몰입도" type="checkbox">
		광고 요금 적정성<input name="목적" value="광고 요금 적정성" type="checkbox">
		<br>
		<input type="submit" value="광고 솔루션 검색" onclick="click">
</form>
</body>
</html>