<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("PC�����̾���_������Ưȭ")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value=''>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�PC�귣��˻�",selected.replaceAll("_"," "));
		
	} else if (selected.equals("PC�����̾���_�⺻")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value=''>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�PC�귣��˻�",selected.replaceAll("_"," "));
		
	}else if (selected.equals("PC����Ƽ����_�ſ�ī��")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value=''>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�PC�귣��˻�",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>�����ϼ���</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value=''>������ȸ��</option> ");
		arr = dao.��ȸ�����("���̹�PC�귣��˻�","PC����Ʈ��");
		
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