<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.contains("����")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����","����");
		
	} else if (selected.equals("������")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("����")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("����")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("��α�/ī��")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("����/���Ҽ�")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("������")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if (selected.equals("��Ϲ�")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>�����ϼ���</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�Ǹ��������("���̹����굿����","����");
		
	}
	for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i)+">"+arr.get(i)+"</option> ");
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