<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.equals("����_�����۵�")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>����</option> ");
		arr = dao.��Ʃ�걸�й�ȯ("��Ʃ��",selected.replaceAll("_", " "));
		
	} else if (selected.equals("Ʈ���_�ν�Ʈ��(�����)")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>����</option> ");
		arr = dao.��Ʃ�걸�й�ȯ("��Ʃ��",selected.replaceAll("_", " "));
		
	}else if (selected.equals("���۾ֵ�")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>����</option> ");
		arr = dao.��Ʃ�걸�й�ȯ("��Ʃ��",selected.replaceAll("_", " "));
		
	}else if (selected.equals("Ʈ���_��Ŀ����")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>����</option> ");
		arr = dao.��Ʃ�걸�й�ȯ("��Ʃ��",selected.replaceAll("_", " "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>�����ϼ���</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>����</option> ");
		arr = dao.��Ʃ�걸�й�ȯ("��Ʃ��","�ν�Ʈ��(������)");
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