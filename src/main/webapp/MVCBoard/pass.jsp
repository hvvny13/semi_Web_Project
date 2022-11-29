<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
h2 {
	text-align: center;
	padding: 30px;
}
form {
	position: absolute; left: 50%; top: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}
</style>
<title>비밀번호 인증</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
    function validateForm(form) {
        if (form.pass.value == "") {
            alert("비밀번호를 입력하세요.");
            form.pass.focus();
            return false;
        }
    }
</script>
</head>
<body>    
<form name="writeFrm" method="post" action="../mvcboard/pass.do" onsubmit="return validateForm(this);">
<input type="hidden" name="idx" value="${ param.idx }" />
<input type="hidden" name="mode" value="${ param.mode }" />
<table class="table table-bordered">
    <tr>
        <td>비밀번호</td>
        <td>
            <input type="password" name="pass" style="width:100px;" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <button type="submit" class="btn btn-outline-secondary">확인</button>
            <button type="reset" class="btn btn-outline-secondary">RESET</button>
            <button type="button" class="btn btn-outline-secondary" onclick="location.href='../mvcboard/list.do';">
                목록 바로가기
            </button>
        </td>
    </tr>
</table>    
</form>
</body>
</html>