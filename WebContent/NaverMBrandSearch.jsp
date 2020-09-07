<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	ArrayList<String> arr = null;
	
	
	
	if (selected.equals("모바일_라이트형_썸네일")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	} else if (selected.equals("모바일_프리미엄형_와이드메뉴")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("모바일_프리미엄형_와이드썸네일")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("모바일_프리미엄형_오토플레이")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("익스텐션형_라이트썸네일")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("익스텐션형_와이드메뉴")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("익스텐션형_오토플레이메뉴")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("익스텐션형_와이드썸네일")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("익스텐션형_오토플레이썸네일")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("리미티드형_쇼핑몰")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("리미티드형_홈쇼핑")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("리미티드형_커뮤니케이션박스")){
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색",selected.replaceAll("_"," "));
		
	}else{
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>기준조회수</option> ");
		arr = dao.조회수출력("네이버모바일브랜드검색","모바일 라이트형 일반");
		
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