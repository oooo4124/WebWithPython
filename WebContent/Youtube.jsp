<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	
	if (selected.equals("구글_프리퍼드")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>구분</option> ");
		arr = dao.유튜브구분반환("유튜브",selected.replaceAll("_", " "));
		
	} else if (selected.equals("트루뷰_인스트림(경매형)")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>구분</option> ");
		arr = dao.유튜브구분반환("유튜브",selected.replaceAll("_", " "));
		
	}else if (selected.equals("범퍼애드")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>구분</option> ");
		arr = dao.유튜브구분반환("유튜브",selected.replaceAll("_", " "));
		
	}else if (selected.equals("트루뷰_디스커버리")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>구분</option> ");
		arr = dao.유튜브구분반환("유튜브",selected.replaceAll("_", " "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value=''>선택하세요</option> ");
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value=''>구분</option> ");
		arr = dao.유튜브구분반환("유튜브","인스트림(예약형)");
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