<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.contains("������")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�������("����PC�귣��˻�","PC�귣��˻�_������");
		
	} else if (selected.equals("PC�귣��˻�_�����̾�")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�������("����PC�귣��˻�",selected);
		
	}else if (selected.equals("PC�귣��˻�_�����̾�_��ȭ")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�������("����PC�귣��˻�",selected);
		
	}else if (selected.equals("PC�귣��˻�_�����̾�_������(���ʿ�)")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�������("����PC�귣��˻�",selected);
		
	}else if (selected.equals("PC�귣��˻�_�����̾�_������(����)")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>�Ǹ����ָ�</option> ");
		arr = dao.�������("����PC�귣��˻�",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>�����ϼ���</option> ");
		
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