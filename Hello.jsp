<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HelloWorld</title>
</head>
<body>
<h1>Hello, World!!</h1>
<%
	Date today = new Date();
	//out.println(today);
%>
<%=today %>
</body>
</html>
<!-- jsp는 저 코드로 현재 시간을 알 수 있음
     html은 자바스크립트 써야 한다는 듯? 
     
     저위에꺼랑 아래랑 같다?!
     -->
     