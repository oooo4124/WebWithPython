
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
			alert("�ϳ��̻��� ��ǰ�� �������ֽʽÿ�")
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
		var small_a = ["����/�ڼ�/����Ƽ��(32��)","A4(16��)","A3(8��)"];
		var small_b = ["8��/4��/2��/������/����","4��,8��"];
		var small_c = ["����/����Ƽ��/������/���˹�"];
		var small_d = ["��������"];
		var small_e = ["����,ȫ����"];
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


	// ����� ����Ʈ ���� ���
	var sum = 0;
	var ccnt = 0;
	function cal() {
		var s1 =	$("#s1 option:selected").text();
		var s2 =	$("#s2 option:selected").val();
		var in1 = $("#in1").val();
		if(in1==0){
			alert("������ �Է��ϼ���");
		}
		else if(s2=="����/�ڼ�/����Ƽ��(32��)" || s2=="A4(16��)" ){
			if(in1<4000) {
				alert("�ּ� ���� 4000��");
			}else{
			cnt += 1;
			var price = (in1*40);
			$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='���' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
			$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
			
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}else if (s2=="A3(8��)" || s2=="����,ȫ����"){
			if(s2=="A3(8��)" && in1<4000) {
				alert("�ּ� ���� 4000��");
			}else if (s2=="����,ȫ����" && in1<2000){
				alert("�ּ� ���� 2000��");
			}else{
				cnt += 1;
				var price = (in1*50);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='���' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='kind' value="+s1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='product1' value="+s2+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='amount1' value="+in1+">");
				$("#p1").append("<input id=del_"+cnt+" type='hidden' name='price1' value="+price+">");
				
			sum += price;
			p2.innerHTML = sum;
			$("#p2").html(sum+"<input type='hidden' name='finalprice1' value="+parseInt(p2.innerHTML)+">");
			}
		}else if (s2=="8��/4��/2��/������/����" || s2=="����/����Ƽ��/������/���˹�"){
			alert("��������� �ʿ��� �����Դϴ�.")
		}else if (s2=="4��,8��"){
			if(in1 < 1000){
				alert("�ּ� ���� 1000��");
			}else{
				cnt += 1;
				var price = (in1*200);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='���' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
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
				alert("�ּ� ���� 1000��");
			}else{
				cnt += 1;
				var price = (in1*150);
				$("#p1").append("<span id=del_"+cnt+">"+s1+") "+s2+" "+in1+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del_"+cnt+" value='���' onclick= del_(this.id,this.name)>"+"<br>"+"</span>");
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
	//���� ���ۻ� ���� ���
	var sum_made = 0;
	var cnt=0;
	function cal1() {
		var s =	$("#s option:selected").val();
		var in2 = $("#in2").val();
		if(in2==0){
			alert("������ �Է��ϼ���");
		}else if (s=="�԰ݼ���"){
			alert("�԰��� �����ϼ���")
		}
		else if(s=="4��"){
			if(in2<8000) {
				alert("�ּ� ���� 8000��");
			}else{
				cnt += 1;
			var price = (in2*38)
			$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='���' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
			$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");
			
			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="8��"){
			if(in2<4000) {
				alert("�ּ� ���� 4000��");
			}else{
				cnt += 1;
				var price = (in2*33)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='���' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");

			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="16��"){
			if(in2<4000) {
				alert("�ּ� ���� 4000��");
			}else{
				cnt += 1;
				var price = (in2*16)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='���' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='product' value="+s+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='amount' value="+in2+">");
				$("#p3").append("<input id=del"+cnt+" type='hidden' name='price' value="+price+">");
			sum_made += price;
			p4.innerHTML = sum_made;
			$("#p4").html(sum_made+"<input type='hidden' name='finalprice' value="+parseInt(p4.innerHTML)+">");
			}
		}else if (s=="32��"){
			if(in1 < 8000){
				alert("�ּ� ���� 8000��");
			}else{
				cnt += 1;
				var price = (in2*8)
				$("#p3").append("<span id=del"+cnt+">"+s+" "+in2+"�� "+(price)+"��"+"<input type='button' name = "+parseInt(price)+" id=del"+cnt+" value='���' onclick= del(this.id,this.name)>"+"<br>"+"</span>");
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
	String age = request.getParameter("����");
	
	
	String sex = request.getParameter("����");
	String[] gu = request.getParameterValues("����");
	
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
				
				
				time = timeArr[0]+"�� ����"+timeArr[1]+"�� ����";
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
				<a href="html5up-hyperspace/index.jsp" class="title">ȫ�繫</a>
				<nav>
					<ul>
						<li><a href="html5up-hyperspace/index.jsp">����ȭ��</a></li>
						<li><a href="html5up-hyperspace/Online.jsp">�¶��� �м�</a></li>
						<li><a href="html5up-hyperspace/Offline.jsp" class="active">�������� �м�</a></li>
						<li><a href="Guide/generic01.html">���̵�</a></li>
						<li><a href="Logout">�α׾ƿ�</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper style2">
						<div class="inner">
							<h1 class="major">�������� ���� �м�</h1>
					
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
						<h2>���� ���� ����Ʈ</h2>
							<table>
	<tr>
	<td colspan='6'><b>����Ʈ</b></td>
	</tr><%boolean flag =true; %>
		<%for(int i=0; i<rvo.get(0).size(); i++){ 
		%>
		<tr>
		<td colspan='6'><a href="<%=rvo.get(0).get(i).get��ũ()%>"><b><%=rvo.get(0).get(i).get��ü()%></b> (<%=rvo.get(0).get(i).get��ũ()%>)</a></td></tr>
		
		
		
	<%} %>
		<tr>
		<td >�� ��</td>
		<td calspan='2' width = 250px>
			<select id='s'>
				<option>�԰ݼ���</option>
				<option>4��</option>
				<option>8��</option>
				<option>16��</option>
				<option>32��</option>
			</select>
		</td>
		<td>
			
		</td>
		<td width = 250px><input id='in2' type="text" placeholder="���� �Է�"></td>
		<td colspan='2'><input onclick='cal1()' type="button" value="���� �߰�"></td>
		</tr>
	</table>
	
	
	
					
					
					</td>
					<td>
					<img src ='massmedia.png' width=400px height=200px>
							<h2>���� ����� ����Ʈ</h2>
							<table>
		<tr>
			<td colspan='6'><b>����Ʈ</b></td>
		</tr>
		<%flag = true; %>
		<%for(int i=0; i<rvo.get(1).size(); i++){ 
		%>
		<tr>
		<td colspan='6'><a href="<%=rvo.get(1).get(i).get��ũ()%>"><span id='sel'><b><%=rvo.get(1).get(i).get��ü()%></b> (<%=rvo.get(1).get(i).get��ũ()%>)</span></a></td></tr>
		
		
		<% } %>
		<td>�� ��</td>
		<td>
		<select id='s1' name="����" onchange="categoryChange(this)">
		<option>����</option>
		<option value="a">����Ʈ</option>
		<option value="b">�Ϲ�����</option>
		<option value="c">�繫�ǹ湮</option>
		<option value="d">����</option>
		<option value="e">������</option>
		<option value="f">��Ÿ�ȫ��</option>
		<option value="g">��ü����</option>
		<option value="h">���ĵ�����</option>
		<option value="i">�����</option>
		</select>
		</td>
		<td width = 125px>
		<select id="s2" name="����">
		<option>�԰�</option>
		</select>
		</td>
		<td>
		<input id='in1' type="text" placeholder="���� �Է�" >
		</td>
		<td><input onclick='cal()' type="button" value="���� �߰�"></td>
		</tr>	
	</table>
		
					
					
					</td>
					</tr>
					
					
					</table>
					<form id="myform" name="myform" action=offline_popup.jsp target="popup_window">
					<table>
					<tr><td>
					<h3><span id='p3'></span></h3><h2>���� ���� �� ������� : <span id='p4'>0<input type='hidden' name='finalprice' value="0"></span>��</h2></td>
		<td><h3><span id='p1'></span></h3><h2>���� ���� �� ������� : <span id='p2'>0<input type='hidden' name='finalprice1' value="0"></span>��</h2></td>
		
		
					
					
					</tr></table>
						
	
							<br><br>
							
		
		
							<br>
							<img src ='loc.png' width=100px height=150px>
							<h2><b><%=age.substring(0,age.indexOf("��Ȱ�α���"))+" "+sex+" " %></b>��õ ��ġ & �ð���</h2>
							<%for(int i=0;i<timeResult.size();i++){ %>
							<p><b><%=i+1%>. <%=locationResult.get(i)%> (<%=timeResult.get(i)%>)</b><br>���� �����α� : <%=scoreResult.get(i)%>��
							<br><img width="810" height="165" alt="����" src=<%=dao2.location(dongResult.get(i))%>></p>
							
							<%} %>
							<br><input id='btn_submit' type="button" onclick = 'gonext(this.form)' value ="���� ������ ����">
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