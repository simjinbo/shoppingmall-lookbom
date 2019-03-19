<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookbom</title>
</head>
<body>
<h1>관리자 상품관리 오류 발생</h1>
<% if(exception != null){ %>
<h3>JSP 예외발생 : <%=exception.getMessage() %></h3>
<h3>예외클래스명 확인 : <%= exception.getClass().getName() %></h3>
<% }else{ %>
<h3>서블릿 요청 실패 : <%= request.getAttribute("message") %></h3>
<% } %>

</body>
</html>