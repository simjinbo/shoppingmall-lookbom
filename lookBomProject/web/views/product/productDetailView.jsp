<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookbom</title>
<script type="text/javascript" src="/lb/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function shoppingbag() {
	location.href = "/lb/views/order/productOrder.jsp?productDetailNo=1&size=1&quantity=1";
	}
function order() {
	location.href = "/lb/views/order/productOrder.jsp?productDetailNo=1&size=1&quantity=1";
	}
</script>
</head>
<body>
<h2 align="center">상품상세페이지 입니다.</h2>

<table align="center" width="1000" border="1px solid #bcbcbc">
</form name="productoption" id="productoption" method="get" >
<tr height="520">
<th width="600">
<table width="600" border="1px solid #bcbcbc">
<tr height="40"><th colspan="2"><div name="brandimage" id="brandimgae"><img width="100%" height="100%" src="/lb/file/product/viva.PNG" ></div></th></tr>
<tr height="120"><th width="130"><div name="productimage2" id="productimage2"><img width="100%" height="100%" src="/lb/file/product/navyfront.PNG" ></div></th><th width="470" rowspan="4"><div name="productimage1" id="productimage1"><img width="100%" height="100%" src="/lb/file/product/navyfull.PNG" ></div></th></tr>
<tr height="120"><th><div name="productimage3" id="productimage3"><img width="100%" height="100%" src="/lb/file/product/navyside.PNG" ></div></th></tr>
<tr height="120"><th><div name="productimage4" id="productimage4"><img width="100%" height="100%" src="/lb/file/product/navyback.PNG" ></div></th></tr>
<tr height="120"><th><div name="productimage5" id="productimage5"><img width="100%" height="100%" src="/lb/file/product/navyproduct.PNG" ></div></th></tr>
</table>
</th>
<th width="400">
<table width="400" border="1px solid #bcbcbc">
<tr height="45"><th colspan="4">상품정보</th></tr>
<tr height="30"><th >상품명</th><td colspan="3"></td></tr>
<tr height="30"><th width="100">브랜드</th><td width="100"></td><th width="100">품번</th><td width="100"></td></tr>
<tr height="30"><th>시즌</th><td></td><th>성별</th><td></td></tr>
<tr height="30"><th>조회수</th><td></td><th>총판매량</th><td></td></tr>
<tr height="45"><th colspan="4">가격정보</th></tr>
<tr height="30"><th>판매가</th><td colspan="3"></td></tr>
<tr height="30"><th>할인률</th><td colspan="3"></td></tr>
<tr height="30"><th>할인된 가격</th><td colspan="3"></td></tr>
<tr height="45"><th colspan="4">색상</th></tr>
<tr height="60"><th></th><th></th><th></th><th></th></tr>
<tr height="50">

<th colspan="2">
<select name="size" id="size" >
       <option value="">사이즈</option>
       <option value="s">S</option>
       <option value="m">M</option>
       <option value="l">L</option>
       <option value="xl">XL</option>
</select>
</th>
<th colspan="2">수량 : 
<input type="number" name="quantiry" id="quantiry" min="1" max="100" step="1" value="1">
</th>
</tr>
</form>
<tr height="50"><th colspan="2"><button onclick="shoppingbag();">장바구니</th>
<th colspan="2"><button onclick="shoppingbag();">주문하기</th></tr>
</table>
</th>
</tr>
<tr height="230">
<th>
<table width="600" border="1px solid #bcbcbc">
<tr height="40"><th width="150">SIZE</th><th width="150"></th><th width="150"></th><th width="150"></th></tr>
<tr height="40"><th>S</th><td></td><td></td><td></td></tr>
<tr height="40"><th>M</th><td></td><td></td><td></td></tr>
<tr height="40"><th>L</th><td></td><td></td><td></td></tr>
<tr height="40"><th>XL</th><td></td><td></td><td></td></tr>
</table>
</th>
<th>
<table width="400" border="1px solid #bcbcbc">
<tr height="45"><th>추가정보</th></tr>
<tr height="160"><td></td></tr>
</table>
</th>
</tr>
</table>
</body>
</html>