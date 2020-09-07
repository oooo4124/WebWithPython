<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String gu = request.getParameter("gu");
	String dan = request.getParameter("dan");
	System.out.println(gu+"/"+dan);
	gu = gu.replaceAll("_", " ");
	dan = dan.replaceAll("_", " ");
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String price = dao.가격반환("네이버모바일브랜드검색", gu, dan);
	
	
	out.println(price.replaceAll(",",""));
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