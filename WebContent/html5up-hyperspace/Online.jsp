<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function categoryChange(e){
		var small_a = ["����","��������","���迩��","�ڵ���","���","������","ģ��","����","����"];
		var small_b = ["��ȭ, �ִ�","���","�̼�, ������","��ȭ","����","����, å","����, ����","���","��Ÿ, ������"];
		var small_c = ["�ݷ�����","����","��Ȱ","�丮, ������","�м�, �̿�","����, ��ȥ","�ϻ�, ����","������, �̹���","���׸���, DIY","��ǰ����","����, ���"];
		var small_d = ["�ǰ�, ����","IT, ��ǻ��","���� �й�","����, �ܱ���","����Ͻ�, ����","��ȸ, ��ġ"];
		var target = document.getElementById("small");
		
		if(e.value == "���,����,����") var d = small_a;
		else if(e.value == "�������θ�Ʈ,����") var d = small_b;
		else if(e.value == "��Ȱ,���Ͽ�,����") var d = small_c;
		else if(e.value == "����,����") var d = small_d;
		
		target.options.length = 0;
		
		for(x in d){
			var opt = document.createElement("option");
			opt.value = d[x];
			opt.innerHTML = d[x];
			target.appendChild(opt);
		}
	}
</script>
		<title>�¶��� �м� - ȫ�繫</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	
		<!-- Header -->
			<header id="header">
			
				<a href="index.jsp" class="title">ȫ�繫</a>
				<nav>
					<ul>
						<li><a href="index.jsp">����ȭ��</a></li>
						<li><a href="Online.jsp" class="active">�¶��� �м�</a></li>
						<li><a href="Offline.jsp">�������� �м�</a></li>
						<li><a href="../Guide/generic01.html">���̵�</a></li>
						<li><a href="../Logout">�α׾ƿ�</a></li>
					</ul>
				</nav>
			</header>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main" class="wrapper style2">
						<div class="inner">
							<img src = onlineW.png width = 155px height = 120px>
							<h1 class="major">�¶��� ���� �м�</h1>
							<!-- 
							<span class="image fit"><img src="images/pic04.jpg" alt="" /></span>
							<p>Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fergiat. Pellentesque in mi eu massa lacinia malesuada et a elit. Donec urna ex, lacinia in purus ac, pretium pulvinar mauris. Curabitur sapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique.</p>
							<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis. Praesent rutrum sem diam, vitae egestas enim auctor sit amet. Pellentesque leo mauris, consectetur id ipsum sit amet, fersapien risus, commodo eget turpis at, elementum convallis elit. Pellentesque enim turpis, hendrerit tristique lorem ipsum dolor.</p>
							 -->
							 
							 <form action="../OnlineA.jsp">
								
								<div class = "fields">
								<div class="field half">
								<h3>��з�</h3>
									<select name="��з�" onchange="categoryChange(this)">
									<option>��з� ����</option>
									<option value="���,����,����">���,����,����</option>
									<option value="�������θ�Ʈ,����">�������θ�Ʈ,����</option>
									<option value="��Ȱ,���Ͽ�,����">��Ȱ,���Ͽ�,����</option>
									<option value="����,����">����,����</option>
									</select>
									<br>
								</div>
								
								<div class="field half">
								<h3>�Һз�</h3>
									<select id="small" name="�Һз�">
									<option>�Һз� ����</option>
									</select>
									<br>
								</div>
									
								<div class="field half">
								<h3>���� ��� ����</h3>
									��<input name="����" value="��" type="radio">
									&nbsp&nbsp��<input name="����" value="��" type="radio">
								
								</div>
								
								
								<div class="field half">
								<h3>���� ��� ���ɴ�</h3>
									20��̸�<input name="����" value="20��̸�" type="checkbox">
									&nbsp&nbsp20��<input name="����" value="20��" type="checkbox">
									&nbsp&nbsp30��<input name="����" value="30��" type="checkbox">
									&nbsp&nbsp40��<input name="����" value="40��" type="checkbox">
									&nbsp&nbsp50���̻�<input name="����" value="50���̻�" type="checkbox">
									<br>
									<br>
								</div>
								
								
								
								<div class="field half">
								<h3>���� ����</h3>
									���� ���輺<input name="����" value="���� ���輺" type="checkbox">
									&nbsp&nbsp�귣�� ȫ�� �� ��ǰ ���� �ȳ�<input name="����" value="�귣�� ȫ�� �� ��ǰ ���� �ȳ�" type="checkbox">
									&nbsp&nbsp������<input name="����" value="������" type="checkbox">
									<br>
									Ÿ�� ���޼�<input name="����" value="Ÿ�� ���޼�" type="checkbox">
									&nbsp&nbsp�ﰢ���� ����<input name="����" value="�ﰢ���� ����" type="checkbox">
									&nbsp&nbsp�����ο� ���� ǥ��<input name="����" value="�����ο� ���� ǥ��" type="checkbox">
									<br>
									���� ���Ե�<input name="����" value="���� ���Ե�" type="checkbox">
									&nbsp&nbsp���� ��� ������<input name="����" value="���� ��� ������" type="checkbox">
									<br>
									<br>
								</div>
								
								<div class="field half">
								<h3>���� ����</h3>
									�˻� ����<input name="Ÿ��" value="�˻�" type="checkbox">
									&nbsp&nbsp�÷��� ����<input name="Ÿ��" value="�÷���" type="checkbox">
									&nbsp&nbsp������ ����<input name="Ÿ��" value="������" type="checkbox">
									&nbsp&nbspSNS ����<input name="Ÿ��" value="SNS" type="checkbox">
									<br>
									��� ����<input name="Ÿ��" value="���" type="checkbox">
									&nbsp&nbsp���̷� ����<input name="Ÿ��" value="���̷�" type="checkbox">
									&nbsp&nbsp������ ����<input name="Ÿ��" value="������" type="checkbox">
									&nbsp&nbspPPL ����<input name="Ÿ��" value="PPL" type="checkbox">
									<br>
									<br>
								
								
								
								</div>
									<div class = "field half">
									<h3>"��Ȯ�� �ַ�� ������ ���� ������ ���� ������ �Է����ֽʽÿ�."</h3><br>
									
									
									<input type="submit" value="���� �ַ�� �˻�" onclick="click">
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
