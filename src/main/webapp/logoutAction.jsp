<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<%
	session.invalidate();
 %>
 <script type="text/javascript">
	location.href="index.jsp"; 
 </script>
</body>
</html>