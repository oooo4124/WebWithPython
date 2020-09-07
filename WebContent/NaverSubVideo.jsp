<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.contains("통합")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상","통합");
		
	} else if (selected.equals("스포츠")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("금융")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("사전")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("블로그/카페")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("웹툰/웹소설")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("동영상")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if (selected.equals("쥬니버")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>선택하세요</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>판매유닛명</option> ");
		arr = dao.판매유닛출력("네이버서브동영상","통합");
		
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