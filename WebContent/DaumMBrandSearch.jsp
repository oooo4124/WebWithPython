<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.equals("MO브랜드검색_와이드메뉴")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>쿼리수</option> ");
		arr = dao.쿼리수반환_상품명("다음모바일브랜드검색",selected);
		
	} else if (selected.equals("MO브랜드검색_와이드썸네일")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>쿼리수</option> ");
		arr = dao.쿼리수반환_상품명("다음모바일브랜드검색",selected);
		
	}else if (selected.equals("MO브랜드검색_오토플레이")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>쿼리수</option> ");
		arr = dao.쿼리수반환_상품명("다음모바일브랜드검색",selected);
		
	}else if (selected.equals("MO브랜드검색_오토플레이_영화")) {
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>쿼리수</option> ");
		arr = dao.쿼리수반환_상품명("다음모바일브랜드검색",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>선택하세요</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='sum2_1(this.form)'>");
		out.println("<option value=''>쿼리수</option> ");
		arr = dao.쿼리수반환_상품명("다음모바일브랜드검색","MO브랜드검색_라이트");
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