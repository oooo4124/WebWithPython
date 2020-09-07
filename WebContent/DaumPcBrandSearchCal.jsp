<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String gu = request.getParameter("gu");
	String dan = request.getParameter("dan");
	System.out.println(gu+"/"+dan);
	
	//dan = dan.replaceAll("_", " ");
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = dao.쿼리수반환("다음PC브랜드검색",dan);
	
	
	out.println("<select name='sel3' onchange='sum3(this.form)'>");
	out.println("<option value=''>쿼리수</option> ");
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