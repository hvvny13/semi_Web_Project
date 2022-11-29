<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
h2 {
	padding: 3%;
	text-align: center;
}
table {
	width: 100%;
}
</style>
<title>수정하기</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
    function validateForm(form) {
        if (form.name.value == "") {
            alert("작성자를 입력하세요.");
            form.name.focus();
            return false;
        }
        if (form.title.value == "") {
            alert("제목을 입력하세요.");
            form.title.focus();
            return false;
        }
        if (form.content.value == "") {
            alert("내용을 입력하세요.");
            form.content.focus();
            return false;
        }
    }
</script>
</head>
<h2>Review</h2>
<form name="writeFrm" method="post" enctype="multipart/form-data" action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
<input type="hidden" name="idx" value="${ dto.idx }"/>
<input type="hidden" name="prevOfile" value="${ dto.ofile }" />
<input type="hidden" name="prevSfile" value="${ dto.sfile }" />
    
<table class="table table-bordered">
    <tr>
        <td>작성자</td>
        <td>
            <input type="text" name="name" style="width:150px;" value="${ dto.name }" />
        </td>
    </tr>
    <tr>
        <td>제목</td>
        <td>
            <input type="text" name="title" style="width:90%;" value="${ dto.title }" />
        </td>
    </tr>
    <tr>
        <td>내용</td>
        <td>
            <textarea name="content" style="width:90%;height:100px;">${ dto.content }</textarea>
        </td>
    </tr>
    <tr>
        <td>첨부 파일</td>
        <td>
            <input type="file" name="ofile" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <button type="submit" class="btn btn-outline-secondary">작성 완료</button>
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