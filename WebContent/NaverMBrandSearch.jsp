<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("�����_����Ʈ��_�����")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	} else if (selected.equals("�����_�����̾���_���̵�޴�")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�����_�����̾���_���̵�����")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�����_�����̾���_�����÷���")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�ͽ��ټ���_����Ʈ�����")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�ͽ��ټ���_���̵�޴�")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�ͽ��ټ���_�����÷��̸޴�")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�ͽ��ټ���_���̵�����")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("�ͽ��ټ���_�����÷��̽����")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("����Ƽ����_���θ�")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("����Ƽ����_Ȩ����")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("����Ƽ����_Ŀ�´����̼ǹڽ�")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�",selected.replaceAll("_"," "));
		
	}else{
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�����Ϻ귣��˻�","����� ����Ʈ�� �Ϲ�");
		
	}
	for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i).replaceAll(" ","_")+">"+arr.get(i)+"</option> ");
	}
	out.println("</select>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>