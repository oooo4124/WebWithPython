<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<%String pw = request.getParameter("pw"); 
String pw_check = request.getParameter("pw_check");
if(pw != pw_check){
	%>
	<script>
	alert("��й�ȣ�� �ٸ��ϴ�.");
	document.location.href="Update.jsp";
	</script>
	<%
}%>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>