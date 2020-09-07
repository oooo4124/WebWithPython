<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.contains("PC")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버모바일콘텐츠DA","PC&MO 메인");
		
	} else if (selected.equals("MO서브")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버모바일콘텐츠DA",selected.replaceAll("_"," "));
		
	}else if (selected.equals("V웹")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버모바일콘텐츠DA",selected.replaceAll("_"," "));
		
	}else if (selected.equals("밴드앱")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버모바일콘텐츠DA",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>선택하세요</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버모바일콘텐츠DA","MO메인");
		
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