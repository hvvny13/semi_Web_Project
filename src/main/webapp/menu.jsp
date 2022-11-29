<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Menu</title>
<%@ include file="../include/header.jsp" %>
<%@ include file="navbar.jsp" %>

<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

h2 {
	
	text-align: center;
	margin: 30px;
}
table {
	border: 0;
	width: 100%;
}
table th {
	font-weight: 400;
	text-align: center;
	font-size: 18px;
}
table tr td {		
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	font-size: 14px;
}
table tr td img{
	width: 100%;
	height: 100%;
}
#coffee, #tea, #latte, #ade, #smoothie, #dessert {
	font-size: 25px;
	border-left: 10px solid grey;
	text-align: left;
}
</style>
</head>
<body>
<h2>Menu</h2>
<table>
<tr>
 <td colspan="4" id="coffee">Coffee</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74cfa0a50_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74d039071_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74d06b555_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74d235830_1920.jpg"></td>
</tr>
<tr>
 <th>아메리카노</th>
 <th>카페라떼</th>
 <th>바닐라라떼</th>
 <th>돌체라떼</th>
</tr>
<tr>
 <td>2800원</td>
 <td>3500원</td>
 <td>3800원</td>
 <td>3800원</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74ccd13b5_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74d235830_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74d079105_1920.jpg"></td>
</tr>
<tr>
 <th>카페모카</th>
 <th>카푸치노</th>
 <th>카라멜마끼야또</th>
 <td></td>
</tr>
<tr>
 <td>4000원</td>
 <td>4000원</td>
 <td>4200원</td>
</tr>
<tr>
 <td colspan="3" id="tea">Tea</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625fa37e74496_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625fa37cd82d9_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625fa37e64417_1920.jpg"></td>
</tr>
<tr>
 <th>녹차</th>
 <th>얼그레이티</th>
 <th>레몬티</th>
</tr>
<tr>
 <td>2500원</td>
 <td>2500원</td>
 <td>2500원</td>
</tr>
<tr>
 <td colspan="4" id="latte">Latte(Non-caffeine)</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74bdc7043_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74bf34746_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74c02bb94_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74bd9aec8_1920.jpg"></td>
</tr>
<tr>
 <th>초코라떼</th>
 <th>민트초코라떼</th>
 <th>딸기라떼</th>
 <th>녹차라떼</th>
</tr>
<tr>
 <td>3200원</td>
 <td>3500원</td>
 <td>3800원</td>
 <td>3500원</td>
</tr>
<tr>
 <td colspan="4" id="ade">Ade</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f9a2d27c63_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f9a2d93000_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f9a2e7ddfb_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f9a2d7f5b8_1920.jpg"></td>
</tr>
<tr>
 <th>아이스티</th>
 <th>블루레몬에이드</th>
 <th>자몽에이드</th>
 <th>복숭아에이드</th>
</tr>
<tr>
 <td>1500원</td>
 <td>3000원</td>
 <td>3000원</td>
 <td>3000원</td>
</tr>
<tr>
 <td colspan="4" id="smoothie">Smoothie</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f747e031c8_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/628d84ba8af51_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f74811cc3d_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f7480acaf7_1920.jpg"></td>
</tr>
<tr>
 <th>띨기요거트스무디</th>
 <th>블루베리요거트스무디</th>
 <th>오레오스무디</th>
 <th>초코스무디</th>
</tr>
<tr>
 <td>3200원</td>
 <td>3200원</td>
 <td>4500원</td>
 <td>3500원</td>
</tr>
<tr>
<td><img src="https://cdn.quv.kr/gno3wdwfr/up/625f748112f5d_1920.jpg"></td>
</tr>
<tr>
 <th>밀크쉐이크</th>
</tr>
<tr>
 <td>3000원</td>
</tr>
<tr>
 <td colspan="4" id="dessert">Dessert</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/62834b006b6d6_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/62834b00502a7_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d601241b9e_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d601080773_1920.jpg"></td>
</tr>
<tr>
 <th>플레인스콘</th>
 <th>초코칩스콘</th>
 <th>마카롱</th>
 <th>크로플</th>
</tr>
<tr>
 <td>2300원</td>
 <td>2500원</td>
 <td>2500원</td>
 <td>2500원</td>
</tr>
<tr>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d6010a5e2f_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d601162fb9_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d60121b299_1920.jpg"></td>
 <td><img src="https://cdn.quv.kr/gno3wdwfr/up/615d6b7fda091_1920.jpg"></td>
</tr>
<tr>
 <th>햄치즈샌드위치</th>
 <th>마카다미아월넛쿠키</th>
 <th>우유크림카스테라</th>
 <th>육쪽마늘빵</th>
</tr>
<tr>
 <td>3000원</td>
 <td>1800원</td>
 <td>3500원</td>
 <td>4000원</td>
</tr>
</table>
</body>
</html>