<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<%@ include file="../include/header.jsp" %>
<%
String context=request.getContextPath();
%>
<script type="text/javascript">
$(function() {
	$(""#btnLogout").click(function() {
		location.href="<%= context %>/member_servlet/logout.do";
	});
});
</script>
</head>
<body>
<h2><%= session.getAttribute("message") %></h2>
접속중인 아이디는 <%= session.getAttribute("userid") %>입니다.
<button type="button" id="btnLogout">로그아웃</button>
</body>
</html>