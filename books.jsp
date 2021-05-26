<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  

<c:set var="url">jdbc:mariadb://bigdata.cqpzprjlgsfx.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<fmt:requestEncoding value="UTF-8" /> <!-- 이거 쓰려면 저위에 fmt 추가해야함 -->

<sql:setDataSource var="mariadb" url="${url}" 
driver="${drv}" user="${usr}" password="${pwd}"/>

<sql:update dataSource="${mariadb}" var="cnt">
insert into books values (?,?,?,?)

<sql:param value="${param.bookid}"/>
<sql:param value="${param.bookname}"/>
<sql:param value="${param.publish}"/>
<sql:param value="${param.price}"/>

</sql:update>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 등록 처리 결과</title>
	</head>
	<body>
		<h1>도서 등록 처리 결과</h1>
		
		
		<p><c:if test="${cnt gt 0}">데이터입력 성공!</c:if></p>
		
		<p><a href="books2.jsp">등록된 도서 조회</a></p>
		
		<%-- <h1>대충 books 테이블에 집어넣기</h1>
		
		<c:set var="url">jdbc:mariadb://bigdata.cqpzprjlgsfx.ap-northeast-2.rds.amazonaws.com:3306/playground</c:set>
		<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
		<c:set var="usr">playground</c:set>
		<c:set var="pwd">bigdata2020</c:set>
		
		<c:set var="bookid" value="3" />
		<c:set var="bookname" value="chicken is nothing" />
		<c:set var="publish" value="가로쉬" />
		<c:set var="price" value="12000" />
		
		<sql:setDataSource var="mariadb" url="${url}" 
		driver="${drv}" user="${usr}" password="${pwd}"/>
		
		<sql:update dataSource="${mariadb}" var="cnt">
		insert into books (bookid,bookname,publish,price) 
		values (?,?,?,?)
		<sql:param value="${bookid}"/>
		<sql:param value="${bookname}"/>
		<sql:param value="${publish}"/>
		<sql:param value="${price}"/>
		</sql:update>
		
		<p>처리결과 : ${cnt}</p>
		<p><c:if test="${cnt gt 0}">데이터입력 성공!</c:if></p>
		
		--%>
		
	</body>
</html>