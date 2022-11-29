<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Board</title>
<style type="text/css">
h2 {
	text-align: center;
	padding: 30px;
}

</style>
<%@ include file="../include/header.jsp" %>
<%@ include file="../navbar.jsp" %>
</head>
<body>
<h2>Review</h2>
<a class="btn btn-secondary form-control" href="../mvcboard/list.do">리뷰작성</a>
<hr style="margin: 20px;">
<h2>Q&A</h2>
<a class="btn btn-secondary form-control" href="#">문의하기</a>
<hr>
<h2>Notice</h2>
<a class="btn btn-secondary form-control" href="#">공지보기</a>

</body>
</html>