<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookbom</title>
<link rel="stylesheet" type="text/css" href="/lb/resources/css/productPagination.css">
</head>
<body>
<h2 align="center">상품관리페이지</h2>
<hr>
<br>
<table align="center" width="1200" border="1px solid #bcbcbc">
<tr height="40">
<th width ="300"><select id="filter1" name="filter1"><option value="">상품분류</option></select></th>
<th width ="300"><select id="filter2" name="filter2"><option value="">등록일자</option></select></th>
<th width ="300"><select id="filter3" name="filter3"><option value="">재고량</option></select></th>
<th width ="300"><input type="text"></th>
</tr>
</table>
<br>
<hr>
<br>
<table align="center" width="1200" >
<tr><th align="right"><button>전체선택</button>&nbsp;&nbsp;&nbsp;<button>선택상품삭제</button></th><tr>
</table>
<br>
<table align="center" width="1200" border="1px solid #bcbcbc">
<tr height="100"><th width="40">선택</th><th width="350">상품정보</th><th width="150">재고량</th><th width="150">판매량</th><th width="150">조회수</th><th width="200">등록일자</th><th width="150">수정</th></tr>
<tr height="100" ><td align="center"><input type="checkbox" name="select"></td>
<td><table border="1px solid #bcbcbc">
<tr height="25"><th width="150" rowspan="4"><div ><img width="80%" height="80%" src="/lb/file/product/navyproduct.PNG" ></div></th><th width="200">[상품분류]</th></tr>
<tr height="25"><th>[상품명]</th></tr>
<tr height="25"><th>옵션:[color][사이즈]</th></tr>
<tr height="25"><th>[할인률]가격</th></tr>
</table></td>
<td></td><td></td><td></td><td></td><td align="center"><input type="button" value="수정"></td></tr>
<tr height="100" ><td align="center"><input type="checkbox" name="select"></td>
<td><table border="1px solid #bcbcbc">
<tr height="25"><th width="150" rowspan="4"><div ><img width="80%" height="80%" src="/lb/file/product/navyproduct.PNG" ></div></th><th width="200">[상품분류]</th></tr>
<tr height="25"><th>[상품명]</th></tr>
<tr height="25"><th>옵션:[color][사이즈]</th></tr>
<tr height="25"><th>[할인률]가격</th></tr>
</table></td>
<td></td><td></td><td></td><td></td><td align="center"><input type="button" value="수정"></td></tr>
<tr height="100" ><td align="center"><input type="checkbox" name="select"></td>
<td><table border="1px solid #bcbcbc">
<tr height="25"><th width="150" rowspan="4"><div ><img width="80%" height="80%" src="/lb/file/product/navyproduct.PNG" ></div></th><th width="200">[상품분류]</th></tr>
<tr height="25"><th>[상품명]</th></tr>
<tr height="25"><th>옵션:[color][사이즈]</th></tr>
<tr height="25"><th>[할인률]가격</th></tr>
</table></td>
<td></td><td></td><td></td><td></td><td align="center"><input type="button" value="수정"></td></tr>
<tr height="100" ><td align="center"><input type="checkbox" name="select"></td>
<td><table border="1px solid #bcbcbc">
<tr height="25"><th width="150" rowspan="4"><div ><img width="80%" height="80%" src="/lb/file/product/navyproduct.PNG" ></div></th><th width="200">[상품분류]</th></tr>
<tr height="25"><th>[상품명]</th></tr>
<tr height="25"><th>옵션:[color][사이즈]</th></tr>
<tr height="25"><th>[할인률]가격</th></tr>
</table></td>
<td></td><td></td><td></td><td></td><td align="center"><input type="button" value="수정"></td></tr>
</table>
<ul>
    <li><a href="#">◀</a></li> 
    <li><a href="#">1</a></li>  
    <li><a href="#">2</a></li>  
    <li><a href="#">3</a></li>  
    <li><a href="#">4</a></li>  
    <li><a href="#">5</a></li>  
    <li><a href="#">▶</a></li>   
</ul>
</body>
</html>