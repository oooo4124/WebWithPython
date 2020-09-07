<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String z = request.getParameter("z");
	System.out.println(x+"/"+y+"/"+z);
	
	//dan = dan.replaceAll("_", " ");
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String returns = dao.쿼리수당가격반환("다음PC브랜드검색",y,z.replaceAll("_", " "));
	
	out.println(returns);
	
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