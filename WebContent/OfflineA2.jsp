
<%-- <%@page import="com.VO.offlineReadVO"%> --%>
<%@page import="com.DAO.PythonDAO"%>
<%@page import="com.VO.offlineReadVO"%>
<%@page import="com.DAO.offlineDAO"%>
<%@page import="com.VO.offlineVO"%>
<%@page import="java.util.ArrayList"%>
<%-- <%@page import="com.VO.offlineVO"%>
<%@page import="com.DAO.offlineDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Hyperspace by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
	
	/* $(document).ready(function(){
		  $("#btn_submit").on("click", function(){
		    window.open("", "popup_window", "width=635, height=700, scrollbars=yes");
		    $('#myform').submit();
		  });
		}); */
	
	
	function gonext(form){
		
		var f1 = form.finalprice1.value;
		var f = form.finalprice.value;
		
		if(f1 == 0 && f == 0){
			alert("하나이상의 상품을 선택해주십시오")
		}else{
			window.open("", "popup_window", "width=635, height=700, scrollbars=yes");
		    $('#myform').submit();
		}
				
		
	}
	
	
	function del_(del_id,del_name){
		
		sum -= parseInt(del_name);
		p2.innerHTML = sum+"<input type='hidden' name='finalprice1' value="+sum+">";
		
		$("#"+del_id).remove();
		$("#"+del_id).remove();
		$("#"+del_id).remove();
		$("#"+del_id).remove();
		$("#"+del_id).remove();
		$("#"+del_id).remove();
		$("#"+del_id).empty();
		
		
	}
	function del(delid,delname){
		
		sum_made -= parseInt(delname);
		p4.innerHTML = sum_made+"<input type='hidden' name='finalprice' value="+sum_made+">";
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).remove();
		$("#"+delid).empty();
		
		
	}
	function print_page() {
		var frm = document.print_frm;
		var new_win = window.open('offline_popup.jsp', 'infoWin', "scrollbars=yes,width=635,height=700'"); 
		frm.target ="infoWin"; 
		frm.submit(); 
		new_win.focus();
}
	
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
	var ccnt = 0;
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
			cnt += 1;
			var price = (in1*40);
			$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='취소' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
			
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}else if (s2=="A3(8절)" || s2=="판촉,홍보물"){
			if(s2=="A3(8절)" && in1<4000) {
				alert("최소 수량 4000매");
			}else if (s2=="판촉,홍보물" && in1<2000){
				alert("최소 수량 2000매");
			}else{
				cnt += 1;
				var price = (in1*50);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='취소' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
				
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}else if (s2=="8절/4절/2절/국반절/국절" || s2=="명함/할인티켓/전단지/판촉물"){
			alert("별도상담이 필요한 종류입니다.")
		}else if (s2=="4절,8절"){
			if(in1 < 1000){
				alert("최소 수량 1000매");
			}else{
				cnt += 1;
				var price = (in1*200);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='취소' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
				
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}else if (s2=="A4" || s2=="A3"){
			if(in1 < 1000){
				alert("최소 수량 1000매");
			}else{
				cnt += 1;
				var price = (in1*150);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='취소' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
				
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}
	}
	//광고 제작사 견적 계산
	var sum_made = 0;
	var cnt=0;
	function cal1() {
		var s =	$("#s option:selected").val();
		var in2 = $("#in2").val();
		if(in2==0){
			alert("수량을 입력하세요");
		}else if (s=="규격선택"){
			alert("규격을 선택하세요")
		}
		else if(s=="4절"){
			if(in2<8000) {
				alert("최소 수량 8000매");
			}else{
				cnt += 1;
			var price = (in2*38)
			$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");
			
			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="8절"){
			if(in2<4000) {
				alert("최소 수량 4000매");
			}else{
				cnt += 1;
				var price = (in2*33)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");

			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="16절"){
			if(in2<4000) {
				alert("최소 수량 4000매");
			}else{
				cnt += 1;
				var price = (in2*16)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");
			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="32절"){
			if(in1 < 8000){
				alert("최소 수량 8000매");
			}else{
				cnt += 1;
				var price = (in2*8)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"매 "+(price)+"원"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='취소' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");
			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}
	}
	</script>
		<title>Generic - Hyperspace by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="html5up-hyperspace/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="html5up-hyperspace/assets/css/noscript.css" /></noscript>
	</head>
	<style>
		body{
			text-align: center;
		}
		h3{
		margin-top: 30px;
		}
		table {
	border: 1px solid gray;
	width: 100%;
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
		</style>
	<body class="is-preload">
	<%
	String age = request.getParameter("나이");
	
	
	String sex = request.getParameter("성별");
	String[] gu = request.getParameterValues("지역");
	
	System.out.println(sex);
	String sexage = sex+age;
	PythonDAO dao2 = new PythonDAO();
	ArrayList<String> arr = null;
	if(gu == null){
		
		
	}else{
		
		arr = dao2.print_gudong(gu);
	}
	
	ArrayList<String> timeResult = new ArrayList<String>();
	ArrayList<String> locationResult = new ArrayList<String>();
	ArrayList<String> dongResult = new ArrayList<String>();
	ArrayList<String> scoreResult = new ArrayList<String>();
	
	
	
	
	  
	 System.out.println(sexage);
	 String[] returns = null;
	 if(gu == null){
		 returns = dao2.pytest(sexage);
	 }else{
		 returns = dao2.pytest(sexage,arr); 
	 }
		
		
		if(returns==null){
			System.out.println("returns is null");
		}
		else{
			String time="";
			String timeTemp="";
			String[] timeArr;
			String[] location;
			String[] score;
			String[] temp;
			
			
			
		for(int i = 1; i < returns.length-1 ; i ++){
			/* System.out.println("returns"+i+"="+returns[i]);
			System.out.println(returns[i].indexOf(']'));
			System.out.println(returns[i].indexOf("]")); */
			if(returns[i].indexOf(']')== -1){
				time = timeTemp;
				location = returns[i].split(" ");
				ArrayList<String> locationArr = new ArrayList<String>();
				for(int j=1;j<location.length;j++){
					//System.out.println(j+"="+location[j]);
					if(!location[j].equals("")){
						locationArr.add(location[j]);
					}
				}
				/* for(int j=0;j<locationArr.size();j++){
					System.out.println(j+"="+locationArr.get(j));
					
				} */
				timeResult.add(time);
				locationResult.add(locationArr.get(0)+" "+locationArr.get(1)+" "+locationArr.get(2));
				dongResult.add(locationArr.get(2));
				scoreResult.add(locationArr.get(3));
				
			}else{
				time = returns[i].substring(1,returns[i].indexOf("]"));
				/* System.out.println(time); */
				timeArr = time.split(",");
				
				
				time = timeArr[0]+"시 에서"+timeArr[1]+"시 사이";
				timeTemp = time;
				location = returns[i].split(" ");
				ArrayList<String> locationArr = new ArrayList<String>();
				for(int j=1;j<location.length;j++){
					//System.out.println(j+"="+location[j]);
					if(!location[j].equals("")){
						locationArr.add(location[j]);
					}
				}
				/* for(int j=1;j<locationArr.size();j++){
					System.out.println(j+"="+locationArr.get(j));
				} */
				timeResult.add(time);
				locationResult.add(locationArr.get(1)+" "+locationArr.get(2)+" "+locationArr.get(3));
				dongResult.add(locationArr.get(3));
				scoreResult.add(locationArr.get(4));
			}
			
			}
		
		
		for(int i = 0; i<timeResult.size();i++){
			System.out.println(timeResult.get(i)+"/"+locationResult.get(i)+"/"+dongResult.get(i)+"/"+scoreResult.get(i));
		}
		}
		%>
	
	

		<!-- Header -->
			<header id="header">
				<a href="html5up-hyperspace/index.jsp" class="title">홍당무</a>
				<nav>
					<ul>
						<li><a href="html5up-hyperspace/index.jsp">메인화면</a></li>
						<li><a href="html5up-hyperspace/Online.jsp">온라인 분석</a></li>
						<li><a href="html5up-hyperspace/Offline.jsp" class="active">오프라인 분석</a></li>
						<li><a href="Guide/generic01.html">가이드</a></li>
						<li><a href="Logout">로그아웃</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper style2">
						<div class="inner">
							<h1 class="major">오프라인 광고 분석</h1>
					
					<body>
					<table width=1200px>
					<tr>
					<td>
					
					<%
						offlineVO vo = new offlineVO();
						offlineDAO dao = new offlineDAO();
						ArrayList<ArrayList<offlineReadVO>> rvo = dao.readOfflineTable(vo);
						%> 
						<img src ='printer.png' width=200px height=200px>
						<h2>광고 제작 사이트</h2>
							<table>
	<tr>
	<td colspan='6'><b>사이트</b></td>
	</tr><%boolean flag =true; %>
		<%for(int i=0; i<rvo.get(0).size(); i++){ 
		%>
		<tr>
		<td colspan='6'><a href="<%=rvo.get(0).get(i).get링크()%>"><b><%=rvo.get(0).get(i).get업체()%></b> (<%=rvo.get(0).get(i).get링크()%>)</a></td></tr>
		
		
		
	<%} %>
		<tr>
		<td >견 적</td>
		<td calspan='2' width = 250px>
			<select id='s'>
				<option>규격선택</option>
				<option>4절</option>
				<option>8절</option>
				<option>16절</option>
				<option>32절</option>
			</select>
		</td>
		<td>
			
		</td>
		<td width = 250px><input id='in2' type="text" placeholder="수량 입력"></td>
		<td colspan='2'><input onclick='cal1()' type="button" value="견적 추가"></td>
		</tr>
	</table>
	
	
	
					
					
					</td>
					<td>
					<img src ='massmedia.png' width=400px height=200px>
							<h2>광고 대행사 사이트</h2>
							<table>
		<tr>
			<td colspan='6'><b>사이트</b></td>
		</tr>
		<%flag = true; %>
		<%for(int i=0; i<rvo.get(1).size(); i++){ 
		%>
		<tr>
		<td colspan='6'><a href="<%=rvo.get(1).get(i).get링크()%>"><span id='sel'><b><%=rvo.get(1).get(i).get업체()%></b> (<%=rvo.get(1).get(i).get링크()%>)</span></a></td></tr>
		
		
		<% } %>
		<td>견 적</td>
		<td>
		<select id='s1' name="종류" onchange="categoryChange(this)">
		<option>종류</option>
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
		<td width = 125px>
		<select id="s2" name="견적">
		<option>규격</option>
		</select>
		</td>
		<td>
		<input id='in1' type="text" placeholder="수량 입력" >
		</td>
		<td><input onclick='cal()' type="button" value="견적 추가"></td>
		</tr>	
	</table>
		
					
					
					</td>
					</tr>
					
					
					</table>
					<form id="myform" name="myform" action=offline_popup.jsp target="popup_window">
					<table>
					<tr><td>
					<h3><span id='p3'></span></h3><h2>광고 제작 총 예상견적 : <span id='p4'>0<input type='hidden' name='finalprice' value="0"></span>원</h2></td>
		<td><h3><span id='p1'></span></h3><h2>광고 배포 총 예상견적 : <span id='p2'>0<input type='hidden' name='finalprice1' value="0"></span>원</h2></td>
		
		
					
					
					</tr></table>
						
	
							<br><br>
							
		
		
							<br>
							<img src ='loc.png' width=100px height=150px>
							<h2><b><%=age.substring(0,age.indexOf("생활인구수"))+" "+sex+" " %></b>추천 위치 & 시간대</h2>
							<%for(int i=0;i<timeResult.size();i++){ %>
							<p><b><%=i+1%>. <%=locationResult.get(i)%> (<%=timeResult.get(i)%>)</b><br>예상 유동인구 : <%=scoreResult.get(i)%>명
							<br><img width="810" height="165" alt="지도" src=<%=dao2.location(dongResult.get(i))%>></p>
							
							<%} %>
							<br><input id='btn_submit' type="button" onclick = 'gonext(this.form)' value ="예상 견적서 보기">
							</form>
						</body>
					</div>
					</section>
			</div>

		
		<!-- Scripts 
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			-->

	</body>
</html>