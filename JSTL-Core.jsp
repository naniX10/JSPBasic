<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSTL core & EL</title>
	</head>
	<body>
		<h1>JSTL core</h1>
		<h2>c:set - 변수 생성</h2>
		<c:set var="name" value="길동" />
		<c:set var="kor" value="100" />
		<c:set var="eng" value="0" />
		<c:set var="mat" value="100" />
		
		<h2>c:out - 변수 출력</h2>
		<c:out value="${name}" />
		<c:out value="${kor}" />
		<c:out value="${eng}" />
		<c:out value="${mat}" />
		
		<h2>총점, 평균 계산</h2>
		<c:set var="tot" value="${ kor + eng + mat }" />
		<c:set var="avg" value="${ tot / 3 }" />
		<c:out value="${tot}" />
		<c:out value="${avg}" />
		
		<p>c:if - 조건문</p>
		<c:set var="grd" value="가" />
		<c:if test="${avg ge 60}">
			<c:set var="grd" value="양" />
		</c:if>
		<c:if test="${avg ge 70}">
			<c:set var="grd" value="미" />
		</c:if>
		<c:if test="${avg ge 80}">
			<c:set var="grd" value="우" />
		</c:if>
		<c:if test="${avg ge 90}">
			<c:set var="grd" value="수" />
		</c:if>
		<c:out value="${grd}" />
		
		<h2>c:choose, c:when, c:otherwise - 다중 조건문</h2>
		<c:choose>
			<c:when test="${avg ge 90}"><c:set var="grd2" value="수" /></c:when>
			<c:when test="${avg ge 80}"><c:set var="grd2" value="우" /></c:when>
			<c:when test="${avg ge 70}"><c:set var="grd2" value="미" /></c:when>
			<c:when test="${avg ge 60}"><c:set var="grd2" value="양" /></c:when>
			<c:otherwise><c:set var="grd2" value="가" /> </c:otherwise>
		</c:choose>
		<c:out value="${grd2}" />
		
		<h2>c:forEach - 반복문</h2>
		<c:forEach begin="1" end="10" step="1" var="i">
			<c:out value="${i}" />
		</c:forEach>
		
		<h2>c:catch - 예외처리</h2>
		<c:catch var="ex">
			<%=10/0 %>
		</c:catch>
		<p>오류내용 : ${ex} </p>
		
	</body>
</html>
<!-- >, gt 부등호랑 괄호랑 햇갈리니까 > 부등호를 gt로 써서 해결 가능
 >= 는 ge -->
 <!--  출력은 c:out ! -->