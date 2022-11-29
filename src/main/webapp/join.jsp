<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<style type="text/css">
#join {
	position: absolute;
	top: 40%;
	left: 50%;
	margin:-150px 0px 0px -200px;
}

#userID, #passwd, #name, #email, #hp {
	margin-bottom: 30px;
}
</style>
<%@ include file="../include/header.jsp" %>
<%@ include file="../navbar.jsp" %>
</head>
<body>
<div class="container" id="join">
 <div class="col-lg-4"></div>
 <div class="col-lg-4">
  <div class="jumbotron" style="padding-top: 20px;">
   <form method="post" action="joinAction.jsp">
    <h3 style="text-align: center; margin-bottom: 30px;">회원가입</h3>
    <div class="form-group">
     <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" id="userID">
    </div>
    <div class="form-group">
     <input type="password" class="form-control" placeholder="비밀번호" name="passwd" maxlength="20" id="passwd">
    </div>
    <div class="form-group">
     <input type="text" class="form-control" placeholder="이름" name="name" maxlength="20" id="name">
    </div>
    <div class="form-group">
     <input type="email" class="form-control" placeholder="이메일" name="email" maxlength="20" id="email">
    </div>
    <div class="form-group">
     <input type="text" class="form-control" placeholder="전화번호" name="hp" maxlength="20" id="hp">
    </div>
    <input type="submit" class="btn btn-primary form-control" value="회원가입">
   </form>
   </div>
 </div>
 <div class="col-lg-4"></div>
</div>
</body>
</html>