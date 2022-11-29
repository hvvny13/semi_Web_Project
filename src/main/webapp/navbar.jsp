<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>index</title>
<style type="text/css">
div #idarea {
	text-align: right;
}
body {
	background-color: #F9EBC8;
}
table {
	border: 0;
	width: 100%;
	margin: auto;
}
td img {
	display: block;
    margin-left: auto;
    margin-right: auto;
}
tr td{
	padding: 10px;
	text-align: center;
}
span a {
	align-content: right;
}

.idarea {
	float: right;
}

#loginout {
	font-size: 13px;
}
span > a {
	text-decoration: none;
	color: grey;
}
</style>
<%@ include file="../include/header.jsp" %>

</head>
<body>
<%
MemberDAO dao=new MemberDAO();
String userID=null;
if(session.getAttribute("userID") != null) {
	userID=(String)session.getAttribute("userID");
}

%>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
  <a class="navbar-brand" href="index.jsp">Cafe DOMINGO</a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
   </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="${path}/about.jsp">About Us <span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${path}/menu.jsp">Menu</a>
      </li>
      <li class="nav-item">
        <%-- <a class="nav-link" href="${path}/MVCBoard/default.jsp">Board</a> --%>
        <a class="nav-link" href="${path}/mvcboard/list.do">Review</a>
      </li>
    </ul>
    <div class="collapse navbar-collapse justify-content-end" id="loginout">
    
    <% if (session.getAttribute("userID") != null) { %>
    
    
    <%= userID %>님 환영합니다!
	&nbsp&nbsp&nbsp&nbsp
	<span><a href="logoutAction.jsp">로그아웃</a></span>
	<% } else {  %>
	<span><a href="join.jsp" style="text-decoration: none;">회원가입</a></span>
    &nbsp&nbsp&nbsp&nbsp
	<span><a href="login.jsp">로그인</a></span>
	<% } %>
	&nbsp&nbsp&nbsp&nbsp
	</div>
  </div>
</nav>
</header>
</body>
</html>