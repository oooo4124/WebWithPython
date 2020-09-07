<%-- <%@page import="com.DAO.onlineAdReadDAO"%> --%>
<%@page import="com.VO.onlineReadVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineDAO"%>
<%@page import="com.VO.onlineVO"%>
<%-- <%@page import="com.DAO.onlineAdReadDAO"%> --%>
<%@page import="com.VO.onlineReadVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>

<html>
	<head>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-alpha1/html2canvas.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>

<script>
	var formNameTemp2 = null;
	var formNameTemp3 = null;
	var sumTemp = 0;
	var formNameTemp = null;
	var cnt = 0;
	sumTemp = Number(sumTemp);

	function sub(form) {
		var x = form.sel1.value;
		formNameTemp = form.name;
		var formNameJsp = form.name + ".jsp";

		$.ajax({
			type : "POST",
			url : formNameJsp,
			data : "selected=" + x, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : result
		//function result 를 의미함
		});

	}

	function subspda(form) {
		var x = form.sel1.value;
		formNameTemp = form.name;
		var formNameJsp = form.name + ".jsp";

		$.ajax({
			type : "POST",
			url : formNameJsp,
			data : "selected=" + x, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : resultspda
		//function result 를 의미함
		});

	}
	
	function resultspda(msg){
		/* alert(msg); */
		
		$("#" + formNameTemp + "Rs").html(msg+"원");
		/* sumTemp += parseInt(msg);
		$("#finalSum").html(sumTemp + "원");  */
	}

	function result(msg) {
		//sub()가 실행되면 결과 값을 가지고 와서 action 을 취해주는 callback 함수
		var spTemp = "#" + formNameTemp + "Sp";
		/* $(formNameTemp+"Sp").html(msg); */
		$(spTemp).html(msg); //innerHTML 을 이런 방식으로 사용함
		//id 는 $("#id")   name 의 경우 $("name") 으로 접근함

	}
	function sum(form) {
		var x = form.sel1.value;
		var y = form.sel2.value;
		var z = form.name;
		formNameTemp2 = form.name;
		var formNameCal = z + "Cal.jsp";

		$.ajax({
			type : "POST",
			url : formNameCal,
			data : "gu=" + x + "&dan=" + y, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : price
		//function result 를 의미함

		});

		var rsTemp = "#" + form.name + "Rs";
		$(rsTemp).html(x + "/" + y + "/" + z);

	}
	function price(msg) {
		if (formNameTemp2 == "NaverTimeBoard") {
			var splited = msg.split("/");
			$("#" + formNameTemp2 + "Rs2").html(
					splited[0] + "원 예상노출량 : " + splited[1] + " 회");
			/* sumTemp += parseInt(msg)
			$("#finalSum").html(sumTemp + "원"); */
		} else {
			$("#" + formNameTemp2 + "Rs2").html(msg + "원");
			/* sumTemp += parseInt(msg)
			$("#finalSum").html(sumTemp + "원"); */
		}
	}

	function unit(form) {
		var x = form.sel1.value;
		var y = form.sel2.value;
		var z = form.name;
		formNameTemp2 = form.name;
		var formNameCal = z + "Cal.jsp";

		$.ajax({
			type : "POST",
			url : formNameCal,
			data : "gu=" + x + "&dan=" + y, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : danprice
		//function result 를 의미함
		});

		var rsTemp = "#" + form.name + "Rs";
		$(rsTemp).html(x + "/" + y + "/" + z);

	}
	function danprice(msg) {
		var splited = msg.split("/");

		$("#" + formNameTemp2 + "Rs2").html(splited[0] + "당");
		$("#" + formNameTemp2 + "Rs3").html(splited[1]);
		$("#" + formNameTemp2 + "Rs4").html("원");
		$("#" + formNameTemp2 + "Rs5").html("");
		/* sumTemp += parseInt(msg)
		$("#finalSum").html(sumTemp+"원"); */

		var CPM = [ "노출예상", 1000, 2000, 3000, 5000, 7000, 10000, 20000 ];
		var CPV = [ "노출예상", 1000, 2000, 3000, 5000, 7000, 10000, 20000 ];
		var 일 = [ "선택하세요", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 ];
		var 주 = [ "선택하세요", 1, 2, 3, 4, 5, 6, 7 ];
		var 월 = [ "선택하세요", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ];
		var 하루 = [ "선택하세요", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ];
		var changeItem = [ 0, 0, 0, 0, 0 ];

		/* splited[0] = replaceAll(splited[0],"/n","");
		
		alert("/" + splited[0] + "/"); */

		if (splited[0] == "\n\n\nCPM") {
			changeItem = CPM;
		} else if (splited[0] == "\n\n\n1일") {
			changeItem = 일;
		} else if (splited[0] == "\n\n\nCPV") {
			changeItem = CPV;
		} else if (splited[0] == "\n\n\n1주") {
			changeItem = 주;
		} else if (splited[0] == "\n\n\n1개월") {
			changeItem = 월;
		} else if (splited[0] == "\n\n\n하루") {
			changeItem = 하루;
		}

		$("#" + formNameTemp2 + "Sel3").empty();

		for (var count = 0; count < changeItem.length; count++) {
			var option = $("<option value = "+changeItem[count]+">"
					+ changeItem[count] + "</option>");
			$("#" + formNameTemp2 + "Sel3").append(option);
		}

	}

	function mul(form) {

		if (form.NaverMContentDASel3.value == "선택하세요") {

		} else {
			var Name = form.name;
			var test = parseInt(form.NaverMContentDASel3.value);

			var rsvalue = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			var rsvalue2 = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			$("#" + formNameTemp2 + "Rs5").html(
					" x " + test + " = " + (rsvalue * test) + " 원");
			/* sumTemp += (rsvalue * test);
			$("#finalSum").html(sumTemp + "원"); */
		}

	}
	function mulvideo(form) {

		if (form.NaverSubVideoSel3.value == "선택하세요") {

		} else {
			var Name = form.name;
			var test = parseInt(form.NaverSubVideoSel3.value);

			var rsvalue = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			var rsvalue2 = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			$("#" + formNameTemp2 + "Rs5").html(
					" x " + test + " = " + (rsvalue * test));
			/* sumTemp += (rsvalue * test);
			$("#finalSum").html(sumTemp + "원"); */
		}

	}
	function mulhomerol(form) {

		if (form.NaverHomeRolSel3.value == "선택하세요") {

		} else {
			var Name = form.name;
			var test = parseInt(form.NaverHomeRolSel3.value);

			var rsvalue = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			var rsvalue2 = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			$("#" + formNameTemp2 + "Rs5").html(
					" x " + test + " = " + (rsvalue * test) + " 원");
			/* sumTemp += (rsvalue * test);
			$("#finalSum").html(sumTemp + "원"); */
		}

	}
	
	function mulyoutube(form) {

		if (form.YoutubeSel3.value == "선택하세요") {

		} else {
			var Name = form.name;
			var test = parseInt(form.YoutubeSel3.value);

			var rsvalue = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			var rsvalue2 = parseInt(document.getElementById(Name + "Rs3").innerHTML);
			$("#" + formNameTemp2 + "Rs5").html(
					" x " + test + " = " + (rsvalue * test) + " 원");
			/* sumTemp += (rsvalue * test);
			$("#finalSum").html(sumTemp + "원"); */
		}

	}
	
	function sum2(form) {
		var x = form.sel1.value;
		var y = form.sel2.value;
		var z = form.name;
		formNameTemp2 = form.name;
		var formNameCal = z + "Cal.jsp";

		$.ajax({
			type : "POST",
			url : formNameCal,
			data : "gu=" + x + "&dan=" + y, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : result2
		//function result 를 의미함

		});

		var rsTemp = "#" + form.name + "Rs";
		$(rsTemp).html(x + "/" + y + "/" + z);

	}
	function result2(msg){
		
		var spTemp = "#" + formNameTemp2 + "Sp2";
		/* $(formNameTemp+"Sp").html(msg); */
		$(spTemp).html(msg); 
		
		
	}
	function sum3(form){
		var x = form.sel1.value;
		var y = form.sel2.value;
		var z = form.sel3.value;
		formNameTemp3 = form.name;
		
		
		var n = form.name;
		var formNameCal2 = n + "Cal2.jsp"
		
		$.ajax({
			type : "POST",
			url : formNameCal2,
			data : "x=" + x + "&y=" + y+"&z="+z, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : result3
		//function result 를 의미함

		});
		
	}
	
	function result3(msg){
		var spTemp = "#" + formNameTemp3 + "Rs5";
		/* $(formNameTemp+"Sp").html(msg); */
		$(spTemp).html(msg+"원"); 
		
		/* sumTemp += parseInt(msg);
		$("#finalSum").html(sumTemp + "원"); */
		
		
	}
	function sum2_1(form) {
		var x = form.sel1.value;
		var y = form.sel2.value;
		var z = form.name;
		formNameTemp2 = form.name;
		var formNameCal = z + "Cal.jsp";

		$.ajax({
			type : "POST",
			url : formNameCal,
			data : "gu=" + x + "&dan=" + y, //&a=xxx 식으로 뒤에 더 붙이면 됨
			contentType : "application/x-www-form-urlencoded; charset=euc-kr",
			success : result2_1
		//function result 를 의미함

		});

		var rsTemp = "#" + form.name + "Rs";
		$(rsTemp).html(x + "/" + y + "/" + z);

	}
	function result2_1(msg){
		
		var spTemp = "#" + formNameTemp2 + "Rs5";
		/* $(formNameTemp+"Sp").html(msg); */
		$(spTemp).html(msg+"원"); 
		
		/* sumTemp += parseInt(msg);
		$("#finalSum").html(sumTemp + "원"); */
		
		
	}
	
	function appendRs2(form){
		Name = form.name;
		var rs = document.getElementById(Name+"Rs");
		var rs2 = document.getElementById(Name+"Rs2");
		
		
		cnt = cnt+1;
		sumTemp += parseInt(rs2.innerHTML);
		alert(rs2.innerHTML);
		$("#final").append("<span id="+cnt+">"+rs.innerHTML+" "+rs2.innerHTML
				+"<input type='button' name = "+parseInt(rs2.innerHTML)+" id="+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
		$("#finalSum").html("총 예상견적 : "+ sumTemp + "원");
	}
	function appendRs5(form){
		Name = form.name;
		var rs = document.getElementById(Name+"Rs");
		var rs2 = document.getElementById(Name+"Rs2");
		var rs3 = document.getElementById(Name+"Rs3");
		var rs4 = document.getElementById(Name+"Rs4");
		var rs5 = document.getElementById(Name+"Rs5");
		
	
		
		
		cnt = cnt+1;
		rsTemp = rs5.innerHTML.split("=");
		sumTemp += parseInt(rsTemp[1]);
		alert(rsTemp[1]);
		$("#final").append("<span id="+cnt+">"+rs.innerHTML+" "+rs2.innerHTML+" "+rs3.innerHTML+" "+rs4.innerHTML+" "+rs5.innerHTML
				+"<input type='button' name = "+rsTemp[1]+" id="+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
		$("#finalSum").html("총 예상견적 : "+ sumTemp + "원");
	}
	
	function appendDaumRs5(form){
		Name = form.name;
		var rs = document.getElementById(Name+"Rs");
		
		var rs5 = document.getElementById(Name+"Rs5");
		
		
		
		cnt = cnt+1;
		
		sumTemp += parseInt(rs5.innerHTML);
		alert(rs5.innerHTML);
		$("#final").append("<span id="+cnt+">"+rs.innerHTML+" "+rs5.innerHTML
				+"<input type='button' name = "+parseInt(rs5.innerHTML)+" id="+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
		$("#finalSum").html("총 예상견적 : "+ sumTemp + "원");
	}
	function appendNaverHomeRs(form){
		Name = form.name;
		
		
		var rs5 = document.getElementById(Name+"Rs");
		
		
		
		cnt = cnt+1;
		
		sumTemp += parseInt(rs5.innerHTML);
		alert(rs5.innerHTML);
		$("#final").append("<span id="+cnt+">네이버홈 통합 스페셜 "+rs5.innerHTML
				+"<input type='button' name = "+parseInt(rs5.innerHTML)+" id="+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
		$("#finalSum").html("총 예상견적 : "+ sumTemp + "원");
	}
	
	function del(delid,delname){
		
		sumTemp -= parseInt(delname);
		$("#finalSum").html("총 예상견적 : "+ sumTemp + "원");
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).empty();
		
		
	}
	
	function pdfclick(){
		html2canvas(document.getElementById("printDiv"), {
            onrendered: function(canvas) {

                var imgData = canvas.toDataURL('image/jpg');
                var imgWidth = 210;
                var pageHeight = imgWidth * 1.414;
                var imgHeight = canvas.height * imgWidth / canvas.width;
                var heightLeft = imgHeight;
                
                console.log('Report Image URL: '+imgData);
                var doc = new jsPDF('p', 'mm','a4');
                var position = 0;
                
                doc.addImage(imgData, 'JPEG', 0, position, imgWidth, imgHeight);
                heightLeft -= pageHeight;
                doc.save('sample.pdf');
	}
		})
	}
</script>

<script src="jquery-3.4.1.min.js"></script>
<style>
table {
	border: 1px solid gray;
	width: 70%;
	margin: 0 auto;
	text-align: center;
	font-size: 100px;
}

th {
	color: white;
	font-size: 10px;
	height: 20px;
	background-color: gray;
	font-size: 15px;
}

td {
	border-bottom: 1px solid whitesmoke;
	font-size: 10px;
	height: 20px;
	font-size: 13px;
}

h2 {
	text-align: center;
}

p {
	text-align: center;
}

span {
	text-align: center;
}

button {
	text-align: center;
}

h2 {
	margin-top: 30px;
}
</style>
		<title>온라인 분석 결과 - 홍당무</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="html5up-hyperspace/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="html5up-hyperspace/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<div class="logo" onclick="window.location.href='html5up-hyperspace/index.jsp'"><img  src = "html5up-hyperspace/logo.png" width = 208px height = 35px onclick="btn_call()"></div>
				<nav>
					<ul>
						<li><a href="html5up-hyperspace/index.jsp">메인화면</a></li>
						<li><a href="html5up-hyperspace/Online.jsp" class="active">온라인 분석</a></li>
						<li><a href="html5up-hyperspace/Offline.jsp">오프라인 분석</a></li>
						<li><a href="html5up-hyperspace/Sub.jsp">부가기능</a></li>
						<li><a href="Logout">로그아웃</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper">
						<div class="inner">
							<h1 class="major">온라인 분석</h1>
												
							<div id="printDiv">
							<%
								//String[] check = request.getParameterValues("소분류"); 
					
								//for(int i = 0; i<check.length; i++){
								//	System.out.println(check[i]);	
								//}
								String 소분류 = request.getParameter("소분류");
								String[] 나이 = request.getParameterValues("나이");
								String 성별 = request.getParameter("성별");
								String[] 목적 = request.getParameterValues("목적");
								String[] 타입 = request.getParameterValues("타입");
					/* 			onlineVO vo = new onlineVO(소분류, 나이, 성별, 목적, 타입); */
					
								onlineDAO dao = new onlineDAO();
					
					/* 			ArrayList<ArrayList<onlineReadVO>> rvo = dao.readOnlineTable(vo); */
							%>
							<h2>추천하는 광고 기법</h2>
					
							<table>
					<%-- 			<%
									for (int i = 0; i < 목적.length; i++) {
								%> --%>
								<tr>
					 				<%-- <td colspan="5"><%=rvo.get(3).get(i).get목적()%> 목적에 따른 적합한 광고기법 순위(%)</td> --%>
										
								</tr>
								<tr>
									<td>1순위</td>
									<td>2순위</td>
									<td>3순위</td>
									<td>4순위</td>
									<td>5순위</td>
								</tr>
								<tr>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
					<%--  				<td><%=rvo.get(3).get(i).get_1순위()%></td>
									<td><%=rvo.get(3).get(i).get_2순위()%></td>
									<td><%=rvo.get(3).get(i).get_3순위()%></td>
									<td><%=rvo.get(3).get(i).get_4순위()%></td>
									<td><%=rvo.get(3).get(i).get_5순위()%></td>  --%>
								</tr>
					<%-- 			<%
									}
								%> --%>
							</table>
					
							<h2>선택한 광고 종류에 대한 광고 대상 연령, 성별을 고려한 점수</h2>
							<table>
								<tr>
									<td>타겟</td>
									 <%-- <%
										for (int i = 0; i < vo.getType().length; i++) {
									%>
									<td><%=vo.getType()[i]%></td>
									<%
										}
									%>  --%>
								</tr>
								<%-- <%
									for (int i = 0; i < rvo.get(4).size(); i++) {
								%>
								<tr>
									<td><%=rvo.get(4).get(i).get타겟()%></td>
									<%
										for (int j = 0; j < vo.getType().length; j++) {
									%>
									<%
										if (vo.getType()[j].equals("검색")) {
									%>
									<td><%=rvo.get(4).get(i).get검색()%></td>
									<%
										} else if (vo.getType()[j].equals("배너")) {
									%>
									<td><%=rvo.get(4).get(i).get배너()%></td>
									<%
										} else if (vo.getType()[j].equals("동영상")) {
									%>
									<td><%=rvo.get(4).get(i).get동영상()%></td>
									<%
										} else if (vo.getType()[j].equals("SNS")) {
									%>
									<td><%=rvo.get(4).get(i).getSNS()%></td>
									<%
										} else if (vo.getType()[j].equals("플로팅")) {
									%>
									<td><%=rvo.get(4).get(i).get플로팅()%></td>
									<%
										} else if (vo.getType()[j].equals("바이럴")) {
									%>
									<td><%=rvo.get(4).get(i).get바이럴()%></td>
									<%
										} else if (vo.getType()[j].equals("PPL")) {
									%>
									<td><%=rvo.get(4).get(i).getPPL()%></td>
									<%
										} else if (vo.getType()[j].equals("보상형")) {
									%>
									<td><%=rvo.get(4).get(i).get보상형()%></td>
									<%
										}
											}
									%>
								</tr>
								<%
									}
								%> --%>
							</table>
					 
							<h2>추천 블로그</h2>
							<table>
								<tr>
									<td>순위</td>
									<td>링크</td>
									<td>방문수(일)</td>
									<td>견적</td>
								</tr>
								<%-- <%
									if (rvo.get(0).size() == 0) {
								%>
								<tr>
									<td colspan="4">자료가 없습니다.</td>
								</tr>
								<%
									} else if (rvo.get(0).size() < 5) {
										for (int i = 0; i < rvo.get(0).size(); i++) {
								%>
								<tr>
									<td><%=i + 1%></td>
									<td><a href="<%=rvo.get(0).get(i).get링크()%>"><%=rvo.get(0).get(i).get링크()%></a></td>
									<td><%=rvo.get(0).get(i).get방문수() + "회"%></td>
									<td><input type="button" value="선택"></td>
								</tr>
								<%
									}
									} else {
										for (int i = 0; i < 5; i++) {
								%>
								<tr>
									<td><%=i + 1%></td>
									<td><a href="<%=rvo.get(0).get(i).get링크()%>"><%=rvo.get(0).get(i).get링크()%></a></td>
									<td><%=rvo.get(0).get(i).get방문수() + "회"%></td>
									<td><input type="button" value="선택"></td>
								</tr>
								<%
									}
									}
								%> --%>
							</table>
					
							<h2>추천 카페</h2>
							<table>
								<tr>
									<td>순위</td>
									<td>이름</td>
									<td>링크</td>
									<td>방문수(일)</td>
									<td>회원수</td>
									<td>견적</td>
								</tr>
								<%-- <%
									if (rvo.get(1).size() == 0) {
								%>
								<tr>
									<td colspan="5">자료가 없습니다.</td>
								</tr>
								<%
									} else if (rvo.get(1).size() < 5) {
										for (int i = 0; i < rvo.get(1).size(); i++) {
								%>
								<tr>
									<td><%=i + 1%></td>
									<td><%=rvo.get(1).get(i).get이름()%></td>
									<td><a href="<%=rvo.get(1).get(i).get링크()%>"><%=rvo.get(1).get(i).get링크()%></a></td>
									<td><%=rvo.get(1).get(i).get방문수() + "회"%></td>
									<td><%=rvo.get(1).get(i).get회원수()%></td>
									<td><input type="button" value="선택"></td>
								</tr>
								<%
									}
									} else {
										for (int i = 0; i < 5; i++) {
								%>
								<tr>
									<td><%=i + 1%></td>
									<td><%=rvo.get(1).get(i).get이름()%></td>
									<td><a href="<%=rvo.get(1).get(i).get링크()%>"><%=rvo.get(1).get(i).get링크()%></a></td>
									<td><%=rvo.get(1).get(i).get방문수() + "회"%></td>
									<td><%=rvo.get(1).get(i).get회원수()%></td>
									<td><input type="button" value="선택"></td>
								</tr>
								<%
									}
									}
								%> --%>
							</table>
					
					
							<h2>선택한 주제에 해당하는 키워드에 대한 정보</h2>
							<table>
								<tr>
									<td>키워드</td>
									<td>주성별(M: 남 F: 여 S: 공통)</td>
									<td>1순위연령대</td>
									<td>2순위연령대</td>
									<td>최대유입기간(월)</td>
									<td>최소유입기간(월)</td>
								</tr>
								<tr>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								
								<%-- <%
									if (rvo.get(2).size() == 0) {
								%>
								<tr>
									<td colspan="6">자료가 없습니다.</td>
								</tr>
								<%
									} else if (rvo.get(2).size() < 5) {
										for (int i = 0; i < rvo.get(2).size(); i++) {
								%>
								<tr>
									<td><%=rvo.get(2).get(i).get키워드()%></td>
									<td><%=rvo.get(2).get(i).get주성별()%></td>
									<td><%=rvo.get(2).get(i).get연령대1순위()%></td>
									<td><%=rvo.get(2).get(i).get연령대2순위()%></td>
									<td><%=rvo.get(2).get(i).get최대유입기간()%></td>
									<td><%=rvo.get(2).get(i).get최소유입기간()%></td>
								</tr>
								<%
									}
									} else {
										for (int i = 0; i < 5; i++) {
								%>
								<tr>
									<td><%=rvo.get(2).get(i).get키워드()%></td>
									<td><%=rvo.get(2).get(i).get주성별()%></td>
									<td><%=rvo.get(2).get(i).get연령대1순위()%></td>
									<td><%=rvo.get(2).get(i).get연령대2순위()%></td>
									<td><%=rvo.get(2).get(i).get최대유입기간()%></td>
									<td><%=rvo.get(2).get(i).get최소유입기간()%></td>
								</tr>
								<%
									}
									}
								%> --%>
							</table>
						</div>

					
						<br>
					
						<span id="final"></span>
						<br>
						<span id="finalSum">총 예상견적 : 0원</span>
					
						<h2>네이버</h2>
						<h4>네이버 PC 브랜드검색</h4>
						<form name="NaverPcBrandSearch">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									onlineAdReadDAO adread = new onlineAdReadDAO();
									ArrayList<String> arr = adread.검색구분("네이버PC브랜드검색");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverPcBrandSearchSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <input type=button value=append onclick=appendRs2(this.form)>
						</form>
					
						<span id="NaverPcBrandSearchRs"></span>
						<span id="NaverPcBrandSearchRs2"></span>

					
					
						<h4>네이버 모바일 브랜드검색</h4>
						<form name="NaverMBrandSearch">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.검색구분("네이버모바일브랜드검색");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverMBrandSearchSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <input type=button value=append onclick=appendRs2(this.form)>
						</form>
					
						<span id="NaverMBrandSearchRs"></span>
						<span id="NaverMBrandSearchRs2"></span>
					
					
						<h4>네이버 모바일 컨텐츠</h4>
						<form name="NaverMContentDA">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.검색구분("네이버모바일콘텐츠DA");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverMContentDASp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <select id="NaverMContentDASel3" onchange='mul(this.form)'>
								<option value="">선택하세요</option>
							</select> <input type=button value=append onclick=appendRs5(this.form)>
							<br> <span id="NaverMContentDARs"></span> <span
								id="NaverMContentDARs2"></span> <span id="NaverMContentDARs3"></span>
							<span id="NaverMContentDARs4"></span> <span id="NaverMContentDARs5"></span>
					
						</form>
					
						<h4>네이버 서브동영상</h4>
						<form name="NaverSubVideo">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
							<%-- 	<%
									adread = new onlineAdReadDAO();
									arr = adread.검색구분("네이버서브동영상");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverSubVideoSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <select id="NaverSubVideoSel3" onchange='mulvideo(this.form)'>
								<option value="">선택하세요</option>
							</select> <input type=button value=append onclick=appendRs5(this.form)>
							<br> <span id="NaverSubVideoRs"></span> <span
								id="NaverSubVideoRs2"></span> <span id="NaverSubVideoRs3" value=hello></span>
							<span id="NaverSubVideoRs4"></span> <span id="NaverSubVideoRs5"></span>
					
						</form>
					
						<h4>네이버 타임보드</h4>
						<form name="NaverTimeBoard">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">평일주말</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.평일주말출력();
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverTimeBoardSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <input type=button value=append onclick=appendRs2(this.form)>
						</form>
						<span id="NaverTimeBoardRs"></span>
						<span id="NaverTimeBoardRs2"></span>
					
						<h4>네이버홈 롤링보드</h4>
						<form name="NaverHomeRol">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">판매유닛명</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.판매유닛명검색();
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="NaverHomeRolSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <select id="NaverHomeRolSel3" onchange='mulhomerol(this.form)'>
								<option value="">선택하세요</option>
							</select> <input type=button value=append onclick=appendRs5(this.form)>
							<br> <span id="NaverHomeRolRs"></span> <span id="NaverHomeRolRs2"></span>
							<span id="NaverHomeRolRs3" value=hello></span> <span
								id="NaverHomeRolRs4"></span> <span id="NaverHomeRolRs5"></span>
					
						</form>
					
					
						<h4>네이버홈 통합스페셜 DA</h4>
						<form name="NaverSpecialDA">
							<select name="sel1" onchange="subspda(this.form);">
								<option value="">시간대</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.시간대출력();
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <input type=button value=append onclick=appendNaverHomeRs(this.form)>
					
						</form>
						<span id="NaverSpecialDARs"></span>
						<span id="NaverSpecialDARs2"></span>
					
						<h4>다음 PC 브랜드검색</h4>
						<form name="DaumPcBrandSearch">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.상품명출력("다음PC브랜드검색");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="DaumPcBrandSearchSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <span id="DaumPcBrandSearchSp2"> <select name="sel3">
									<option value="">선택하세요</option>
							</select>
							</span> <input type=button value=append onclick=appendDaumRs5(this.form)>
							<br> <span id="DaumPcBrandSearchRs"></span> <span
								id="DaumPcBrandSearchRs2"></span> <span id="DaumPcBrandSearchRs3"
								value=hello></span> <span id="DaumPcBrandSearchRs4"></span> <span
								id="DaumPcBrandSearchRs5"></span>
					
						</form>
					
					
						<h4>다음 모바일 브랜드검색</h4>
						<form name="DaumMBrandSearch">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.상품명출력("다음모바일브랜드검색");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="DaumMBrandSearchSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span> <input type=button value=append onclick=appendDaumRs5(this.form)>
							<br> <span id="DaumMBrandSearchRs"></span> <span
								id="DaumMBrandSearchRs2"></span> <span id="DaumMBrandSearchRs3"
								value=hello></span> <span id="DaumMBrandSearchRs4"></span> <span
								id="DaumMBrandSearchRs5"></span>
					
						</form>
					
						<h4>유튜브 영상 광고</h4>
						<form name="Youtube">
							<select name="sel1" onchange="sub(this.form);">
								<option value="">상품구분</option>
								<%-- <%
									adread = new onlineAdReadDAO();
									arr = adread.상품명출력("유튜브");
					
									for (int i = 0; i < arr.size(); i++) {
								%>
								<option value=<%=arr.get(i).replaceAll(" ", "_")%>><%=arr.get(i)%></option>
					
								<%
									}
								%> --%>
							</select> <span id="YoutubeSp"> <select name="sel2">
									<option value="">선택하세요</option>
							</select>
							</span>
							<!--  <select id="YoutubeSel3" onchange='mulyoutube(this.form)'> -->
								<option value="">선택하세요</option>
							</select> 
							<!-- <input type=button value=append onclick=appendRs5(this.form)> -->
							<br> <span id="YoutubeRs"></span> <span id="YoutubeRs2"></span> <span
								id="YoutubeRs3" value=hello></span> <span id="YoutubeRs4"></span> <span
								id="YoutubeRs5"></span>
					
						</form>
						
						<p>
							<!-- <button id="pdfDownloader" onclick = "pdfclick()" >pdf생성</button> -->
							<input type=button id=pdfDownloader value=pdf출력 onclick="pdfclick()">
						</p>
						
						</div>
											
					</section>

			</div>

		<!-- Footer -->
			<footer id="footer" class="wrapper alt">
				<div class="inner">
					<ul class="menu">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
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