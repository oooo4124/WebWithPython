<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("평일")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		arr = dao.시간대출력("네이버타임보드",selected.replaceAll("_"," "));
		
	} else if (selected.equals("주말")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		arr = dao.시간대출력("네이버타임보드",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>선택하세요</option> ");
		
		
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