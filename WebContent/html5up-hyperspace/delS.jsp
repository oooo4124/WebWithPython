<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
session.removeAttribute("vo"); %>
	<script>
		alert("회원탈퇴가 완료되었습니다.");
		document.location.href="index.jsp";
	</script>
</body>
</html>