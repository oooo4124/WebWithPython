
<%@page import="com.VO.offlineReadVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.VO.offlineVO"%>
<%@page import="com.DAO.offlineDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="jquery-3.4.1.min.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script type="text/javascript">


function categoryChange(e){
	var small_a = ["명함/자석/할인티켓(32절)","A4(16절)","A3(8절)"];
	var small_b = ["8절/4절/2절/국반절/국절","4절,8절"];
	var small_c = ["명함/할인티켓/전단지/판촉물"];
	var small_d = ["별도문의"];
	var small_e = ["판촉,홍보물"];
	var small_f = ["A4","A3"];
	
	var target = document.getElementById("s2");
	
	if(e.value == "a") var d = small_a;
	else if(e.value == "b") var d = small_a;
	else if(e.value == "c") var d = small_a;
	else if(e.value == "d") var d = small_a;
	else if(e.value == "e") var d = small_b;
	else if(e.value == "f") var d = small_c;
	else if(e.value == "g") var d = small_d;
	else if(e.value == "h") var d = small_e;
	else if(e.value == "i") var d = small_f;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}

// 대행사 사이트 견적 계산
var sum = 0;
function cal() {
	var s1 =	$("#s1 option:selected").text();
	var s2 =	$("#s2 option:selected").val();
	var in1 = $("#in1").val();
	if(in1==0){
		alert("수량을 입력하세요");
	}
	else if(s2=="명함/자석/할인티켓(32절)" || s2=="A4(16절)" ){
		if(in1<4000) {
			alert("최소 수량 4000매");
		}else{
		p1.innerHTML += s1+") "+s2+" "+in1+"매 "+ (in1*40)+"원<br>"
		sum += (in1*40);
		p2.innerHTML = "총액 : "+sum+"원";
		}
	}else if (s2=="A3(8절)" || s2=="판촉,홍보물"){
		if(s2=="A3(8절)" && in1<4000) {
			alert("최소 수량 4000매");
		}else if (s2=="판촉,홍보물" && in1<2000){
			alert("최소 수량 2000매");
		}else{
		p1.innerHTML += s1+") "+s2+" "+in1+"매 "+(in1*50)+"원<br>"
		sum += (in1*50);
		p2.innerHTML = "총액 : "+sum+"원";
		}
	}else if (s2=="8절/4절/2절/국반절/국절" || s2=="명함/할인티켓/전단지/판촉물"){
		alert("별도상담이 필요한 종류입니다.")
	}else if (s2=="4절,8절"){
		if(in1 < 1000){
			alert("최소 수량 1000매");
		}else{
		p1.innerHTML += s1+") "+s2+" "+in1+"매 "+(in1*200)+"원<br>"
		sum += (in1*200);
		p2.innerHTML = "총액 : "+sum+"원";
		}
	}else if (s2=="A4" || s2=="A3"){
		if(in1 < 1000){
			alert("최소 수량 1000매");
		}else{
		p1.innerHTML += s1+") "+s2+" "+in1+"매 "+(in1*150)+"원<br>"
		sum += (in1*150);
		p2.innerHTML = "총액 : "+sum+"원";
		}
	}
}

</script>

<style>
body{
	text-align: center;
}
h3{
margin-top: 30px;
}
table{
      border: 1px solid gray;
      width: 70%;
      margin: 0 auto;
      text-align: center;
      font-size: 100px;
   }
   td{
      border-bottom: 1px solid whitesmoke;
      font-size: 10px;
      height: 20px;
      font-size: 13px;
   }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
offlineVO vo = new offlineVO();
offlineDAO dao = new offlineDAO();
ArrayList<ArrayList<offlineReadVO>> rvo = dao.readOfflineTable(vo);
System.out.println(rvo);
%>
<h2>광고 솔루션</h2>
	<h3>광고제작사사이트</h3>
	<table>
	<tr>
	<td>사이트</td>
	<td>견적</td>
	</tr>
		<%for(int i=0; i<rvo.get(1).size(); i++){ %>
		<tr>
		<td><a href="<%=rvo.get(1).get(i).get링크()%>"><%=rvo.get(1).get(i).get업체() %></a></td>
		<td><input type="button" value="선택"></td>
		</tr>
	<%} %>
	</table>
	
	<h3>광고대행사사이트</h3>
	<table>
		<tr>
			<td colspan='6'>링크</td>
		</tr>
		<%for(int i=0; i<rvo.get(0).size(); i++){ %>
		<tr>
		<td colspan='6'><a href="<%=rvo.get(0).get(i).get링크()%>"><span id='sel'><%=rvo.get(0).get(i).get업체() %></span></a></td>
		</tr>
		<%} %>
		<td>견적</td>
		<td>
		<select id='s1' name="종류" onchange="categoryChange(this)">
		<option>종류 선택</option>
		<option value="a">아파트</option>
		<option value="b">일반주택</option>
		<option value="c">사무실방문</option>
		<option value="d">차량</option>
		<option value="e">포스터</option>
		<option value="f">길거리홍보</option>
		<option value="g">매체광고</option>
		<option value="h">스탠딩배포</option>
		<option value="i">문어발</option>
		</select>
		</td>
		<td>
		<select id="s2" name="견적">
		<option>규격 선택</option>
		</select>
		</td>
		<td>
		<input id='in1' type="number" min='4000' max='50000' placeholder="수량 입력" >
		</td>
		<td><input onclick='cal()' type="button" value="견적 추가"></td>
		</tr>	
	</table>
	<h3>추천 위치 & 시간대</h3>
	<p>1. 위치명 (시간대)</p>
	<p>해당위치지도</p>
	<p>2. 위치명 (시간대)</p>
	<p>해당위치지도</p>
	<p>...</p>
	<h3>총 예상견적 : <p id='p1'></p><p id='p2'></p></h3>
</body>
</html>