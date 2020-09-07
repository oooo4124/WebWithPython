<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String x = request.getParameter("gu");
	String y = request.getParameter("dan");
	
	System.out.println(x+y);
	
	//dan = dan.replaceAll("_", " ");
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String returns = dao.쿼리수당가격반환_상품명("다음모바일브랜드검색",x,y.replaceAll("_", " "));
	
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