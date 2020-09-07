<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	out.println("<select name='sel2' onchange='sum(this.form)'>");
	if (selected.equals("PC프리미엄형_동영상특화")) {
		out.println("<option value=''>기준조회수</option> ");
		arr = dao.조회수출력("네이버PC브랜드검색","PC프리미엄형 동영상특화");
		
	} else if (selected.equals("PC프리미엄형_기본")) {
		out.println("<option value=''>기준조회수</option> ");
		arr = dao.조회수출력("네이버PC브랜드검색","PC프리미엄형 기본");
		
	}else if (selected.equals("PC프리미엄형_신용카드")) {
		out.println("<option value=''>기준조회수</option> ");
		arr = dao.조회수출력("네이버PC브랜드검색","PC프리미엄형 신용카드");
		
	}else if(selected.equals("")){
		out.println("<option value=''>선택하세요</option> ");
		
	}else{
		out.println("<option value=''>기준조회수</option> ");
		arr = dao.조회수출력("네이버PC브랜드검색","PC라이트형");
		
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