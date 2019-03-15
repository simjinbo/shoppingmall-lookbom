<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iookbom</title>
<link rel="stylesheet" type="text/css" href="/lb/resources/css/productadmin.css">
<script type="text/javascript">
 function addRow(){
		var row = "<tr height='40'><td align='center' ><input type='color' name='productcolor' id='productcolor'></td>"+
		"<td><div class='filebox' align='center'> <label for='ex_file'>사진</label> <input type='file'  name='productimage1' id='productimage1'></div></td>"+
		"<td><div class='filebox' align='center'> <label for='ex_file'>사진</label> <input type='file'  name='productimage2' id='productimage2'></div></td>"+
		"<td><div class='filebox' align='center'> <label for='ex_file'>사진</label> <input type='file'  name='productimage3' id='productimage3'></div></td>"+
		"<td><div class='filebox' align='center'> <label for='ex_file'>사진</label> <input type='file'  name='productimage4' id='productimage4'></div></td>"+
		"<td><div class='filebox' align='center'> <label for='ex_file'>사진</label> <input type='file'  name='productimage5' id='productimage5'></div></td>"+
		"<td align='center'><input type='text' size='10' name='ssizequantity' id='ssizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='msizequantity' id='msizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='lsizequantity' id='lsizequantity'></td>"+
		"<td align='center'><input type='text' size='10' name='xlsizequantity' id='xlsizequantity'></td>"+
		"</tr>";		
		 document.getElementById("productdetail").innerHTML += row;
	}
</script>
</head>
<body>
<form>
<h2 align="center">상품등록페이지</h2>
<table align="center" width="1200">
<tr align="left"><th>상품등록</th></tr>
</table>
<hr align="center" width="1200">
<table align="center" width="1200" border="1px solid #bcbcbc">
<tr height="40"><th width="600" colspan="2"><table align="center" width="600" border="1px solid #bcbcbc"><tr height="40">
<th width="150">브랜드</th><th width="280"><input type="text"></th><th width="170"><input type="file"></th>
</tr>
</table></th>
<th width="300">사이즈 정보</th>
<th width="300">
<input type="checkbox" name="sizecategory" value="s">S<input type="checkbox" name="sizecategory" value="m">M
<input type="checkbox" name="sizecategory" value="l">L<input type="checkbox" name="sizecategory" value="xl">XL
</th></tr>
<tr height="40"><th width="300">분류</th><td width="300"><input type="text"></td><th width="600" colspan="2">사이즈 정보</th></tr>
<tr height="40"><th>상품이름</th><td><input type="text"></td>
<th colspan="2" rowspan="4"><table align="center" width="600" border="1px solid #bcbcbc">
<tr height="30"><th width="150">SIZE</th><th width="150"><input type="text"></th><th width="150"><input type="text"></th><th width="150"><input type="text"></th></tr>
<tr height="30"><th>S</th><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
<tr height="30"><th>M</th><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
<tr height="30"><th>L</th><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
<tr height="30"><th>XL</th><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td></tr>
</table></th>
</tr>
<tr height="40"><th>시즌</th><td><input type="text"></td></tr>
<tr height="40"><th>성별</th><td><input type="text"></td></tr>
<tr height="40"><th>판매가</th><td><input type="text"></td></tr>
<tr height="40"><th>상품 할인</th><td><input type="text"></td><th colspan="2">추가정보</th></tr>
<tr height="40"><th></th><td></td><th colspan="2" rowspan="2"><textarea></textarea></th></tr>
<tr height="40"><th></th><td></td></tr>
</table >
<br>
<table id="productdetail" align="center" width="1200" border="1px solid #bcbcbc">
<tr height="40"><th width="100">COLOR</th><th width="100">FULL</th><th width="100">FRONT</th><th width="100">SIDE</th><th width="100">BACK</th><th width="100">PRODUCT</th>
<th width="110">Ssize재고</th><th width="110">Msize재고</th><th width="110">Lsize재고</th><th width="110">XLsize재고</th><th><button onclick="addRow();">+</button>&nbsp;&nbsp;<button>-</button></th></tr>
<tr height="40"><td align="center" ><input type=color></td>
<td><div class="filebox" align="center"> <label for="ex_file">사진</label> <input type="file" id="ex_file"></div></td>
<td><div class="filebox" align="center"> <label for="ex_file">사진</label> <input type="file" id="ex_file"></div></td>
<td><div class="filebox" align="center"> <label for="ex_file">사진</label> <input type="file" id="ex_file"></div></td>
<td><div class="filebox" align="center"> <label for="ex_file">사진</label> <input type="file" id="ex_file"></div></td>
<td><div class="filebox" align="center"> <label for="ex_file">사진</label> <input type="file" id="ex_file"></div></td>
<td align="center"><input type="text" size="10"></td>
<td align="center"><input type="text" size="10"></td>
<td align="center"><input type="text" size="10"></td>
<td align="center"><input type="text" size="10"></td>
</tr>
</table>
<br>
<table align="center" >
<tr align="center" ><th><button type="submit">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>취소</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button>삭제</button></th></tr>
</table>
</form>
</body>
</html>