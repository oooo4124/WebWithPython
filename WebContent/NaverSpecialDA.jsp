<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.onlineAdReadDAO"%>
<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%
	String selected = request.getParameter("selected");
	System.out.println(selected);
	
	onlineAdReadDAO dao = new onlineAdReadDAO();
	String returns = "";
	
	
	returns = dao.통합스페셜가격출력(selected);
	out.print(returns);
	/* if (selected.equals("03~06")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	} else if (selected.equals("06~09")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if (selected.equals("09~12")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if (selected.equals("12~15")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if (selected.equals("15~18")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if (selected.equals("18~21")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if (selected.equals("21~24")) {
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
		
	}else if(selected.equals("")){
		out.println("<select name='sel2'>");
		out.println("<option value='null'>선택하세요</option> ");
		
		
	}else{
		out.println("<select name='sel2' onchange='sum(this.form)'>");
		out.println("<option value='null'>시간대</option> ");
		returns = dao.통합스페셜가격출력(selected.replaceAll("_"," "));
	} */
	/* for(int i = 0; i < arr.size(); i++){
		out.println("<option value="+arr.get(i).replaceAll(" ","_")+">"+arr.get(i)+"</option> ");
	}
	out.println("</select>"); */
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