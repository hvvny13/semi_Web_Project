<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Review</title>
<style type="text/css">
h2 {
	padding-top: 2%;
	text-align: center;
}
a {
	text-decoration: none !important;
}

table {
	margin-top: 3%;
	width: 100%;
}
</style>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<h2>Review</h2>
<div>
<table border="1"  class="table table-striped">
<tr align="center">
 <th scope="col" width="10%">번호</th>
 <th scope="col" width="*">제목</th>
 <th scope="col" width="15%">작성자</th>
 <th scope="col" width="10%">조회수</th>
 <th scope="col" width="15%">작성일</th>
 <th scope="col" width="8%">첨부</th>
</tr>
<c:choose>
 <c:when test="${empty boardLists }">
  <tr>
   <td colspan="6" align="center">
   등록된 게시물이 없습니다.
   </td>
  </tr>
 </c:when>
<c:otherwise>
 <c:forEach items="${ boardLists }" var="row" varStatus="loop">
  <tr align="center">
   <td> 
    ${map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
   </td>
   <td align="left">
    <a href="../mvcboard/view.do?idx=${row.idx }">${row.title }</a>
   </td>
   <td>${ row.name }</td>
   <td>${ row.visitcount }</td>
   <td>${ row.postdate }</td>
   <td>
   <c:if test="${ not empty row.ofile }">
    <a href="../mvcboard/download.do?ofile=${ row.ofile }&sfile=${ row.sfile}&idx=${ row.idx }">[Down]</a>
   </c:if>
   </td>
  </tr>
 </c:forEach>
</c:otherwise>
</c:choose>
</table>
<table border="1">
 <tr align="center">
  <td>
   ${ map.pagingImg }
  </td>
  <td width="100">
  <button type="button" class="btn btn-outline-secondary" onclick="location.href='../mvcboard/write.do';">글쓰기</button>
  </td>
 </tr>
</table>
</div>
<form method="get">
<table>
 <tr>
  <td align="center">
   <select name="searchField">
    <option value="title">제목</option>
    <option value="content">내용</option>
   </select>
   <input name="searchWord">
   <input type="submit" class="btn btn-outline-secondary" value="검색하기">
  </td>
 </tr>
</table>
</form>
</body>
</html>