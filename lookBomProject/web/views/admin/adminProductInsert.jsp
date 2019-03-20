<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="adminError.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookbom</title>
<link rel="stylesheet" type="text/css" href="/lb/resources/css/productadmin.css">
<script type="text/javascript">
   var i = 1;
 function addRow(){
		var row = "<tr height='40'><td align='center' ><input type='color' name='productcolor' id='productcolor'></td>"+
		"<td><input type='file'  name='"+i+"productimage1' id='"+i+"productimage1'></td>"+
		"<td><input type='file'  name='"+i+"productimage2' id='"+i+"productimage2'></td>"+
		"<td><input type='file'  name='"+i+"productimage3' id='"+i+"productimage3'></td>"+
		"<td><input type='file'  name='"+i+"productimage4' id='"+i+"productimage4'></td>"+
		"<td><input type='file'  name='"+i+"productimage5' id='"+i+"productimage5'></td>"+
		"<td align='center'><input type='text' size='10' name='ssizequantity' id='ssizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='msizequantity' id='msizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='lsizequantity' id='lsizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='xlsizequantity' id='xlsizequantity'></td>"+
		"</tr>";		
		 document.getElementById("productdetail").innerHTML += row;
		 i++;
	}
</script>
</head>
<body>
<form name="product" id="product" method="post" action="/lb/apinsert" enctype="multipart/form-data">
<h2 align="center">상품등록페이지</h2>
<table align="center" width="1200">
<tr align="left"><th>상품등록</th></tr>
</table>
<hr align="center" width="1200">
<table align="center" width="1200" border="1px solid #bcbcbc">
<tr height="40"><th width="600" colspan="2"><table align="center" width="600" border="1px solid #bcbcbc"><tr height="40">
<th width="150">브랜드</th><th width="280"><input type="text" name="brand" id="brand"></th><td width="170"> <input type="file" name="brandimage" id="brandimage" ></td>
</tr>
</table></th>
<th width="300">사이즈 정보</th>
<th width="300">
<input type="checkbox" name="sizecategory" value="s">S<input type="checkbox" name="sizecategory" value="m">M
<input type="checkbox" name="sizecategory" value="l">L<input type="checkbox" name="sizecategory" value="xl">XL
</th></tr>
<tr height="40"><th width="300">분류</th><td width="300"><input type="text" name="producttype" id="producttype"></td><th width="600" colspan="2">사이즈 정보</th></tr>
<tr height="40"><th>상품이름</th><td><input type="text" name="productname" id="productname"></td>
<th colspan="2" rowspan="4"><table align="center" width="600" border="1px solid #bcbcbc">
<tr height="30"><th width="150">SIZE</th><th width="150"><input type="text" name="sizecontents" id="sizecontents"></th><th width="150"><input type="text" name="sizecontents" id="sizecontents"></th><th width="150"><input type="text" name="sizecontents" id="sizecontents"></th></tr>
<tr height="30"><th><input type="text" name="sizecontents" id="sizecontents"></th><td><input  type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td></tr>
<tr height="30"><th><input type="text" name="sizecontents" id="sizecontents"></th><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td></tr>
<tr height="30"><th><input type="text" name="sizecontents" id="sizecontents"></th><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td></tr>
<tr height="30"><th><input type="text" name="sizecontents" id="sizecontents"></th><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td><td><input type="text" name="sizecontents" id="sizecontents"></td></tr>
</table></th>
</tr>
<tr height="40"><th>시즌</th><td><input type="text" name="season" id="season"></td></tr>
<tr height="40"><th>성별</th>
<td>&nbsp; &nbsp; 
<input type="radio" name="sex" value="M"> 남자 &nbsp; 
<input type="radio" name="sex" value="F"> 여자 &nbsp; 
<input type="radio" name="sex" value="U"> 공용 &nbsp; 
</td>
</tr>
<tr height="40"><th>판매가</th><td><input type="text" name="productprice" id="productprice"></td></tr>
<tr height="40"><th>상품 할인</th><td><input type="text" name="discountrate" id="discountrate"></td><th colspan="2">추가정보</th></tr>
<tr height="40"><th></th><td></td><th colspan="2" rowspan="2"><textarea cols="90" rows="4" name="moreinfo" id="moreinfo"></textarea></th></tr>
<tr height="40"><th></th><td></td></tr>
</table >
<br>
<table id="productdetail" align="center" width="1200" border="1px solid #bcbcbc">
<tr height="40"><th width="100">COLOR</th><th width="100">FULL</th><th width="100">FRONT</th><th width="100">SIDE</th><th width="100">BACK</th><th width="100">PRODUCT</th>
<th width="110">Ssize재고</th><th width="110">Msize재고</th><th width="110">Lsize재고</th><th width="110">XLsize재고</th><th><button onclick="addRow();">+</button>&nbsp;&nbsp;<button>-</button></th></tr>
<tr height="40">
<td align="center" ><input type="color"  name="productcolor" id="productcolor"></td>
<td><input  type="file" name="0productimage1" id="0productimage1"></div></td>
<td><input  type="file" name="0productimage2" id="0productimage2"></div></td>
<td><input  type="file" name="0productimage3" id="0productimage3"></div></td>
<td><input  type="file" name="0productimage4" id="0productimage4"></div></td>
<td><input  type="file" name="0productimage5" id="0productimage5"></div></td>
<td align="center"><input type="text" size="10" name="ssizequantity" id="ssizequantity"></td>
<td align="center"><input type="text" size="10" name="msizequantity" id="msizequantity"></td>
<td align="center"><input type="text" size="10" name="lsizequantity" id="lsizequantity"></td>
<td align="center"><input type="text" size="10" name="xlsizequantity" id="xlsizequantity"></td>
</tr>
</table>
<br>
<table align="center" >
<tr align="center" ><th><input type="submit" value="등록하기">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>취소</button></th></tr>
</table>
</form>
</body>
</html>