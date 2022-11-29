<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.MemberDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="member.MemberDTO" scope="page"/>
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="passwd" />
<jsp:setProperty name="user" property="name" />
<jsp:setProperty name="user" property="email" />
<jsp:setProperty name="user" property="hp" />
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
 if (user.getUserID() == null || user.getPasswd() == null || user.getName() == null || 
 user.getEmail() == null || user.getHp() == null) {
	 PrintWriter script=response.getWriter();
	 script.println("<script>");
	 script.println("alert('입력이 되지 않은 항목이 있습니다.')");
	 script.println("history.back()");
	 script.println("</script>");
 } else {
	 MemberDAO dao = new MemberDAO();
	 int result = dao.join(user);
	 if (result == -1) {
		 PrintWriter script=response.getWriter();
		 script.println("<script>");
		 script.println("alert('이미 존재하는 아이디입니다.')");
		 script.println("history.back()");
		 script.println("</script>");
	 } else {
		 session.setAttribute("userID", user.getUserID());
		 session.setAttribute("name", user.getName());
		 PrintWriter script=response.getWriter();
		 script.println("<script>");
		 script.println("location.href='index.jsp'");
		 script.println("</script>");
	 	} 
	 }
 %>
</body>
</html>