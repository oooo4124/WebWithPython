<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String gu = request.getParameter("gu");
	String dan = request.getParameter("dan");
	System.out.println(gu+"/"+dan);
	gu = gu.replaceAll("_", " ");
	//dan = dan.replaceAll("_", " ");
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String[] price = dao.단위가격반환("네이버서브동영상", gu, dan);
	
	
	
	price[1] =price[1].replaceAll(",", "");
	price[1] = price[1].replaceAll(" ","");
	price[0] = price[0].replaceAll(" ","").replaceAll("\n", "").replaceAll("\t","");
	price[1] = price[1].replaceAll("\"", "");
	
	System.out.println(price[0]+"/"+price[1]);
	out.println(price[0]+"/"+price[1]);
	
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