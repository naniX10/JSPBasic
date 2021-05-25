<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! // 변수선언?
	int gugu;
	int one;
	int two;
	int thr;
	int four;
	int five;
	int six;
	int sev;
	int eig;
	int nine;
	int ten;
	
%>
<%! // 메서드 선언?
	void computegugu() {
		 one = gugu * 1;
		 two = gugu * 2;
		 thr = gugu * 3;
		 four = gugu * 4;
		 five = gugu * 5;
		 six = gugu * 6;
		 sev = gugu * 7;
		 eig = gugu * 8;
		 nine = gugu * 9;
		 ten = gugu * 10;
}
%>
<% // 실행?
	gugu = 24;
%>
<% // 메서드 호출
	computegugu();
%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>구구단 - 24단</title>
	</head>
	<body>
		<h1>24단 구구단?</h1>
<%
	out.println("24 × 1 = " + (24*1) + "<br>");
	out.println("24 × 2 = " + (24*2) + "<br>");
	out.println("24 × 3 = " + (24*3) + "<br>");
	out.println("24 × 4 = " + (24*4) + "<br>");
	out.println("24 × 5 = " + (24*5) + "<br>");
	out.println("24 × 6 = " + (24*6) + "<br>");
	out.println("24 × 7 = " + (24*7) + "<br>");
	out.println("24 × 8 = " + (24*8) + "<br>");
	out.println("24 × 9 = " + (24*9) + "<br>");
	out.println("24 × 10 = " + (24*10) + "<br>");
%>
<hr>
<%
	for (int i = 1; i <= 24; ++i){
		out.print("24 × " + i + " = " + (24*i) + "<br>");
	}
%>
<hr>		
<%-- 이게 맞다는데 --%>
<!-- 이건 안되나? -->
		<p> 24 × 1 = <%=one %></p>
		<p> 24 × 2 = <%=two %></p>
		<p> 24 × 3 = <%=thr %></p>
		<p> 24 × 4 = <%=four %></p>
		<p> 24 × 5 = <%=five %></p>
		<p> 24 × 6 = <%=six %></p>
		<p> 24 × 7 = <%=sev %></p>
		<p> 24 × 8 = <%=eig %></p>
		<p> 24 × 9 = <%=nine %></p>
		<p> 24 × 10 = <%=ten %></p>
		
	
	</body>
</html>