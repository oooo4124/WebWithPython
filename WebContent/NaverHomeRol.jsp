<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("P_메인_롤링보드_네이티브DA")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>상품구분</option> ");
		arr = dao.상품구분출력("네이버홈롤링보드",selected);
		
	} else if (selected.equals("P_메인_롤링보드_FirstView")) {
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>상품구분</option> ");
		arr = dao.상품구분출력("네이버홈롤링보드",selected);
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>선택하세요</option> ");
		
		
	}else{
		out.println("<select name='sel2' onchange='unit(this.form)'>");
		out.println("<option value='null'>상품구분</option> ");
		arr = dao.상품구분출력("네이버홈롤링보드","P_메인_롤링보드");
	}
	for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i).replaceAll(" ","_")+">"+arr.get(i)+"</option> ");
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