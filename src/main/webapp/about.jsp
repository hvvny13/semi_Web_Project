<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>About us</title>
<style type="text/css">
.notosanskr * { 
 font-family: 'Noto Sans KR', sans-serif;
}

h2 {
	text-align: center;
	padding: 40px;
}

p {
	text-align: center;
	padding: 20px;
	line-height: 60px;
}

h3 {
	text-align: center;
}
.cafe {
	text-align: center;
}
table {
	width: 100%;
	text-align: center;
	margin-bottom: 50px; 
}

hr {
	padding-top: 30px;
	padding-bottom: 30px;
}

.road {
	padding-bottom: 50px;
}

body {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
<%@ include file="../include/header.jsp" %>
<%@ include file="../navbar.jsp" %>
</head>
<body>
<h2>Cafe DOMINGO</h2>
<div class="cafe"><img src="https://mblogthumb-phinf.pstatic.net/20150831_2/shcida_1441006219297VAzRE_JPEG/552b383ce58ececd8200032d_blue-bottle-coffee-aoyama-cafe-schemata-architects_07_b.jpg?type=w2"></div>

<p>
	Cafe DOMINGO는 2020년 런칭되어 다양한 원두와 음료를 판매하고 있습니다. <br>
	직접 로스팅한 커피로 풍부한 맛을 즐길 수 있고 누구든지 편안하게 즐길 수 있는 공간을 통해 
	기분좋은 경험을 제공하는데 앞장서겠습니다.
</p>

<hr>
  <h3 class="road">찾아오시는 길</h3>
  <table class="map">
   <tr>
   <td>
   <a href="https://goo.gl/maps/2eDkTBMsesKzVX6i6"><img src="images/map.png"></a>
   </td>
   <td>
   <p><strong>Cafe DOMINGO</strong></p>
    <p>서울특별시 역삼동 779-1</p>
    <p>tel : 02-123-1231</p>
    <p>email : kim123@naver.com</p>
	<a class="btn btn-primary" href="tel:021231231">전화 문의</a>
    <a class="btn btn-primary" href="mailto:kim123@naver.com">이메일 문의</a>

   </td>
   </tr>
  </table>
   
</body>
</html>
