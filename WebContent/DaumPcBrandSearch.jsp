<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.contains("베이직")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.형태출력("다음PC브랜드검색","PC브랜드검색_베이직");
		
	} else if (selected.equals("PC브랜드검색_프리미엄")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.형태출력("다음PC브랜드검색",selected);
		
	}else if (selected.equals("PC브랜드검색_프리미엄_영화")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.형태출력("다음PC브랜드검색",selected);
		
	}else if (selected.equals("PC브랜드검색_프리미엄_관공서(기초외)")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.형태출력("다음PC브랜드검색",selected);
		
	}else if (selected.equals("PC브랜드검색_프리미엄_관공서(기초)")) {
		out.println("<select name='sel2' onchange='sum2(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.형태출력("다음PC브랜드검색",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>선택하세요</option> ");
		
	}
	for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i)+">"+arr.get(i)+"</option> ");
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