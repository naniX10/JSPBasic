<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>include 지시자 테스트</title>
	</head>
	<body>
		<%@ include file="header.jsp" %>
		<%-- 정적 페이지를 include할때 주로 사용 --%>
	<hr>
		<div><%@ include file="main.jsp" %></div>
	<hr>
		<%@ include file="footer.jsp" %>	
	</body>
</html>
<!-- include 작동은 저기 파일들의 모든 것들을 복붙함 
그래서 미리미리 파일들을 정리 해놓자!(대충 위아래 쳐내라는 뜻)-->