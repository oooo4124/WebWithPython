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
	<h3>��з�</h3>
	
		<select name="��з�" onchange="categoryChange(this)">
		<option>��з� ����</option>
		<option value="a">���,����,����</option>
		<option value="b">�������θ�Ʈ,����</option>
		<option value="c">��Ȱ,���Ͽ�,����</option>
		<option value="d">����,����</option>
		</select>
	<h3>�Һз�</h3>
		<select id="small" name="�Һз�">
		<option>�Һз� ����</option>
		</select>
		
		<h3>���� ��� ���ɴ�</h3>
		20��̸�<input name="����" value="20-" type="checkbox">
		20��<input name="����" value="20" type="checkbox">
		30��<input name="����" value="30" type="checkbox">
		40��<input name="����" value="40" type="checkbox">
		50���̻�<input name="����" value="50" type="checkbox">
		<h3>���� ��� ����</h3>
		��<input name="����" value="��" type="radio">
		��<input name="����" value="��" type="radio">
		���<input name="����" value="���" type="radio">
		<h3>���� ����</h3>
		���� ���輺<input name="����" value="���� ���輺" type="checkbox">
		�귣�� ȫ�� �� ��ǰ ���� �ȳ�<input name="����" value="�귣�� ȫ�� �� ��ǰ ���� �ȳ�" type="checkbox">
		������<input name="����" value="������" type="checkbox">
		Ÿ�� ���޼�<input name="����" value="Ÿ�� ���޼�" type="checkbox"><br>
		�ﰢ���� ����<input name="����" value="�ﰢ���� ����" type="checkbox">
		�����ο� ���� ǥ��<input name="����" value="�����ο� ���� ǥ��" type="checkbox">
		���� ���Ե�<input name="����" value="���� ���Ե�" type="checkbox">
		���� ��� ������<input name="����" value="���� ��� ������" type="checkbox">
		<br>
		<input type="submit" value="���� �ַ�� �˻�" onclick="click">
</form>
</body>
</html>