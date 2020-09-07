<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String gu = request.getParameter("gu");
	String dan = request.getParameter("dan");
	System.out.println(gu+"/"+dan);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String[] price = dao.판매단위CPM가격출력(gu, dan);
	
	
	price[1] =price[1].replaceAll(",", "");
	price[1] = price[1].replaceAll(" ","");
	price[0] = price[0].replaceAll(" ","").replaceAll("\n", "").replaceAll("\t","");
	
	
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