<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.equals("MO�귣��˻�_���̵�޴�")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>������</option> ");
		arr = dao.��������ȯ_��ǰ��("��������Ϻ귣��˻�",selected);
		
	} else if (selected.equals("MO�귣��˻�_���̵�����")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>������</option> ");
		arr = dao.��������ȯ_��ǰ��("��������Ϻ귣��˻�",selected);
		
	}else if (selected.equals("MO�귣��˻�_�����÷���")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>������</option> ");
		arr = dao.��������ȯ_��ǰ��("��������Ϻ귣��˻�",selected);
		
	}else if (selected.equals("MO�귣��˻�_�����÷���_��ȭ")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>������</option> ");
		arr = dao.��������ȯ_��ǰ��("��������Ϻ귣��˻�",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>�����ϼ���</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>������</option> ");
		arr = dao.��������ȯ_��ǰ��("��������Ϻ귣��˻�","MO�귣��˻�_����Ʈ");
	}
	for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i).replaceAll(" ", "_")+">"+arr.get(i)+"</option> ");
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