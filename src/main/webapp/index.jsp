<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cafe DOMINGO</title>
<script type="text/javascript">
</script>
<style type="text/css">
div #idarea {
	text-align: right;
}
body {
	background-color: #F9EBC8;
}
table {
	border: 0;
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

h2 {
	text-align: center;
	padding: 30px;
}
table > tr > td > a {
	text-decoration: none;
}
</style>
<%@ include file="../include/header.jsp" %>
<%@ include file="../navbar.jsp" %>
</head>
<body>
 <h2>Daily Coffee</h2>
<table border="0">
<tr>
<td><a href="https://smartstore.naver.com/angelinusmall/products/6516163231"><img src="https://shop-phinf.pstatic.net/20220421_264/1650517860663qLqLB_JPEG/51653703329247229_1939305760.jpg?type=f296_296"></a></td>
<td><a href="https://smartstore.naver.com/angelinusmall/products/6516141354"><img src="https://shop-phinf.pstatic.net/20220421_223/1650517876180KDvPs_JPEG/51653718845681151_216395635.jpg?type=f296_296"></a></td>
<td><a href="https://smartstore.naver.com/angelinusmall/products/6516097358"><img src="https://shop-phinf.pstatic.net/20220421_199/1650517892531sefhR_JPEG/51653726307085903_1838617929.jpg?type=f296_296"></a></td>
<td><a href="https://smartstore.naver.com/angelinusmall/products/6516014084"><img src="https://shop-phinf.pstatic.net/20220427_278/1651029377317DbvrU_PNG/52165160964476466_309504129.png?type=f296_296"></a></td>
</tr>
<tr>
<td>
<a href="https://smartstore.naver.com/angelinusmall/products/6516163231">
	MOONLIGHT 인도네시아<br>
    16,000원
</a></td>
<td>
<a href="https://smartstore.naver.com/angelinusmall/products/6516141354">
	BREEZE 르완다<br>
	16,000원
</a></td>
<td>
<a href="https://smartstore.naver.com/angelinusmall/products/6516097358">
	HONEY NAP 에티오피아<br>
	16,000원
</a></td>
<td>
<a href="https://smartstore.naver.com/angelinusmall/products/6516014084">
	SUNSHINE 콜롬비아<br>
	16,000원
</a>
</td>
</tr>
</table>
<h2>Cafe Story</h2>
<hr>
<table>
<tr>
 <td><img src="https://shop-phinf.pstatic.net/20220429_53/165119715114968gtO_PNG/%EC%87%BC%ED%95%91%EC%8A%A4%ED%86%A0%EB%A6%AC_%EB%A1%9C%EC%8A%A4%ED%8C%85.png?type=f408_230"></td>
 <td><img src="https://shop-phinf.pstatic.net/20220412_6/1649743679333CM233_JPEG/%EB%A7%A4%EC%9E%A5_%EC%BB%A8%EC%85%89%EC%83%B7_(3).jpg?type=f408_230"></td>
 <td><img src="https://shop-phinf.pstatic.net/20220412_132/16497419082625knjJ_JPEG/%ED%9B%8C%EC%9B%90%EB%91%90.jpg?type=f408_230"></td>
</tr>
</table>
</body>
</html>