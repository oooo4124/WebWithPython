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
		alert("ȸ��Ż�� �Ϸ�Ǿ����ϴ�.");
		document.location.href="index.jsp";
	</script>
</body>
</html>