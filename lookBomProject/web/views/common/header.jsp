<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@ page import = "member.model.vo.Member, search.model.vo.Search" %>
    <%
    Member loginUser = (Member)session.getAttribute("loginUser");
    Search search = (Search)session.getAttribute("search");
    %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
		function show(){
			var max = document.getElementById("searchmax");
			max.style.display = "inline-block";
		};
		window.onload = function() {
			document.getElementById('close').onclick = function() { 
				var max = document.getElementById("searchmax");
				max.style.display = "none"; } 
			};
	/*  $(window).scroll(function(){
		var scroll = $(window).scrollTop();
		if(scroll != 0){
		$(".header").addClass(".change1");
		$(".hdheight").addClass(".change");
		}else{
		$(".header").removeClass(".change1");
		$(".hdheight").removeClass(".change");
		}
	});  */
	 $(window).scroll(function(){
			var scroll = $(window).scrollTop();
			if(scroll > 0){
			$(".header").addClass("change1");
			$(".hdheight").addClass("change");
			}else{
			$(".header").removeClass("change1");
			$(".hdheight").removeClass("change");
			}
			console.log(scroll);
		}); 
	
</script>

<style type="text/css">
	.change1{
	top:-50px;
	
	/* backgound: rgba(255,255,255,0.5); */
		}
	.change{
	/*  backgound: rgba(255,255,255,0.5);  */
	 border-bottom: 1px solid rgba(0,0,0,0.5);
	 opacity:0.7;
	}
	.header {
	width:100%;
	position:fixed;
	z-index:10;
	height:150px;

	}
	.hdheight{
	background: white;
	height:170px;
	}
	.topbar {
	width:100%;
	height:50px;
	background:black;
	margin: 0px;
	padding:  0px;
	}
	.logo2{
	width:100px;
	height:100px;
	float:left;
	padding : 10px;
	}
	.logo{
	width:200px;
	height:50px;
	position:relative;
	top:10px;
	left:10px;
	padding-botton: 20px;
	}
	body{
 color:black;
 font-family:"맑은고딕";
 font-size: 15px;
 font-weight: bold;

 }
	 a{
 text-decoration:none;
 }
 	ul,ol,li{
 margin:0;
 padding:0;
 list-style-type:none;
 }
 	#navi li{
 float:left;
 position:relative;
 top:10px;
 line-height:40px;
 color:black;
 }

 	#navi li a{
  display:block;
  padding:0 10px;
  color:black;
  margin:0;'
  
 
 }
 	#navi > li >a:hover{
 font-weight:900;
 border-bottom:3px solid black;
 background: white;
 color:yellow
 }
 #navi > li >a:visited{
  border-bottom:3px solid black;
 }
 	#navi li ul{
 position:absolute;
 opacity:0;
 width:180px;
 box-shadow:0 10px 20px 0 rgba(0,0,0,0.2);
 -webkit-boix-shadow:0 12px 25px 0 rgba(0,0,0,0.2);
 }
 	#navi li:hover ul{
 opacity:1;
 }
 	#navi li ul li{
 float:none;
 position:static;
 height:0;
 line-height:0;
 background:none;
 }
 	#navi li:hover ul li{
 padding:10px 10;
 height:50px;
 line-height:40px;
 /* background:rgba(0,0,0,0.4); */
 background:white;
 }
 	#navi li ul li a:hover{
 	font-weight:900;
 	}
	 #mybar{
 float:left;
 color:black;
 font-size:small;
 }
	 #mybar img{
 width:15px;
 height:15px;
 padding-top:15px;
 padding-left:15px;
 }
	.myBtn img{
		width:50px;
 	height:50px;

 }
 	.myBtn{
 /* 	width:50px;
 	height:50px;
 	display:inline;;
 	position:relative;
 	top:30px;
 	 */
 	background-color: white; /* Green */
 	border: none;
  /*   position:relative;
 	top:30px;
 	left:-20px; */
  	width:50px;
 	height:50px;
	
	  display: inline-block;

 	}
 	.myBtn:hover{
 	cursor:pointer;
 	}

        /* The Close Button */
       #close {
            color: white;
            float: right;
            font-size: 100px;
            font-weight: bold;
            position:relative;
            top:150px;
            left:-50px;
        }
       #close:hover,
        #close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        #loginUser h3{
        padding:0px;
        margin:0px;
        color: white;
        float : left;
        position:relative;
        top:10px;
        left:10px;
        }
    
	#rank {
/* 	position:relative;
	top:30px;
	left:100px; */
	width:200px;
	height:35px;
/* 	float:left; */
	}
	
	#searchmax{
	display: none;  /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100vw; /* Full width */
            height: 100vh; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
           
	}
	#blackwindow{
	display:inline-block;
	width:366px; height:34px;
	border:3px solid black;
	background:white;
	
	position:relative;
	top:100px;
	left: 900px;
		}
	#searchingbar  {
	width: 348px; height: 21px;
	margin: 6px 0 0 9px;
	font-weight:bold;
	border:0;
	font-size: 16px;
	line-height:25px;
	outline:none;
	
	}
	#sch_smit{
	width: 54px; height:40px;
	background:black;
	color:white;
	margin:0; border:0;
	font-weight:bold;
	border-radius: 1px;
	cursor: pointer;
	vertical-align: top;
	position:relative;
	left:370px;
	top:-32px;
	}
	#topsearch{
	position:relative;
	left:800px;
	top:200px;
	width:200px;
	}
	
</style>

<body style="margin:0px; padding:0px; width:100%; height:100%;">
<header class="header">
<div class="hdheight">
<div class="topbar">
	<div class="topbar" id="loginUser" style="background: pink; height: 50px;; width: 300px;"><!-- 로그인시 유저명이랑 포인트  -->
	<%-- 	<%if(loginUser != null) {%>
		<h3>이름 : <%=loginUser.getUserName() %></h3>&nbsp;&nbsp;	<h3>포인트 : <%= loginUser.getAge() %></h3>
		<%}else{ %>
		<h3>이름      &nbsp;&nbsp;</h3><h3>포인트</h3>
		<%} %> --%>
	</div>
</div>
<div class ="top_fix_zone" id="topbar1">
<a href="#" ><img src="/semi/resources/images/로고2.png" id="logo2" class="logo2"></a>
<a href="#"><img src="/semi/resources/images/로고.png" id="logo" class="logo"></a>

<div  style="width:25%;height:130px;  float:right;">
<table>
<tr>
<td><a id="mybar" href="#"><img src="/semi/resources/images/로그인.jpg">로그인</a></td>
<td><a id="mybar" href="#"><img src="/semi/resources/images/회원가입.jpg">회원가입</a></td>
<td><a id="mybar" href="#"><img src="/semi/resources/images/장바구니.jpg">장바구니</a></td>
<td><a id="mybar" href="#"><img src="/semi/resources/images/마이페이지.jpg">마이페이지</a></td>
</tr>
</table>
<!-- 실시간 랭킹바  -->
<table>
<tr>
<th>
<select id="rank" name="rank">
	<option id="rank1">1. <%=1%></option>
	<option id="rank2">2. <%=2%></option>
	<option id="rank3">3. <%=3 %></option>
	<option id="rank4">4. <%=4%></option>
	<option id="rank5">5. <%=5 %></option>
	<option id="rank6">6. <%=6 %></option>
	<option id="rank7">7. <%=7 %></option>
	<option id="rank8">8. <%=8 %></option>
	<option id="rank9">9. <%=9 %></option>
	<option id="rank10">10. <%=0 %></option>
</select>
</th>
<th><button class="myBtn"  onclick="show();"><img src="/semi/resources/images/검색.jpg"></button></th>
<tr>
</table>
</div>

<!--  메뉴 바 -->
<ul id="navi">	
<li class="on"><a class="menu1" href="/semi/views/side/side1.jsp">MEN</a>
	<ul>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
</li>
<li><a class="menu2" href="/semi/views/side/side2.jsp">WOMEN</a>
<ul>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
</li>
<li><a class="menu3" href="/semi/views/side/side3.jsp">BRAND</a>
	<ul>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
</li>
<li><a class="menu4" href="/semi/views/side/side4.jsp">ACC</a>
	<ul>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
</li>
<li><a class="menu5" href="/semi/views/side/side5.jsp">BRAND</a>
	<ul>
		<li><a href="#">1</a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
	</ul>
</li>
</ul>
</div>

<div id="searchmax">
	<span id="blackwindow">
				<input type="text" name="search"   id="searchingbar">&nbsp;
				<button type="submit" id="sch_smit">검색</button>
	</span>
	<div id="topsearch">
	<h1 style="border-bottom:2px solid black">인기   검색어</h1>
	<table>
	<tr><td>1위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>2위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>3위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>4위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>5위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>6위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>7위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>8위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>9위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	<tr><td></td></tr>
	<tr><td>10위 &nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
	
	</table>
	</div>
	<span id="close" >&times;</span> 
</div>
<!-- 검색창  -->
</div>
</header>
</body>
</html>