<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("P_����_�Ѹ�����_����Ƽ��DA")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>��ǰ����</option> ");
		arr = dao.��ǰ�������("���̹�Ȩ�Ѹ�����",selected);
		
	} else if (selected.equals("P_����_�Ѹ�����_FirstView")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>��ǰ����</option> ");
		arr = dao.��ǰ�������("���̹�Ȩ�Ѹ�����",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>�����ϼ���</option> ");
		
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>��ǰ����</option> ");
		arr = dao.��ǰ�������("���̹�Ȩ�Ѹ�����","P_����_�Ѹ�����");
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