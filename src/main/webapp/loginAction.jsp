<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="member.MemberDTO" scope="page"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="passwd" />
<jsp:setProperty name="user" property="name" />
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
 String userID = null;
 if (session.getAttribute("userID") != null) {
	 userID = (String)session.getAttribute("userID");
 }
 if (userID != null) {
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("alert('이미 로그인이 되어있습니다.')");
	 script.println("location.href='index.jsp'");
	 script.println("</script>" );
 }
 MemberDAO dao = new MemberDAO();
 session.setAttribute("name", user.getName());
 int result = dao.login(user.getUserID(), user.getPasswd());
 if (result == 1) {
	 session.setAttribute("userID", user.getUserID());
	 
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("location.href='index.jsp'");
	 script.println("</script>");
 } else if (result == 0) {
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("alert('비밀번호가 일치하지 않습니다.')");
	 script.println("history.back()");// 이전 페이지로 사용자를 돌려보내는 것 
	 script.println("</script>");
 } else if (result == -1) {
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("alert('존재하지 않는 아이디입니다.')");
	 script.println("history.back()");
	 script.println("</script>");
 } else if (result == -2) {
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("alert('데이터베이스 오류 발생')");
	 script.println("history.back()");
	 script.println("</script>");
 }
 %>
</body>
</html>