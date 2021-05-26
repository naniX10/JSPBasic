<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//response.sendRedirect("http://google.co.kr");

	// 아이디 : abc123, 비밀번호 987xyz
	// 아이디 / 비번이 일치 => loginok로
	//                      => 로그인 한 계정을 세션에 등록함
	// 아이디 / 비번이 불일치 => loginfail로
	
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	
	if (userid.equals("abc123") && passwd.equals("987xyz")) {
		session.setAttribute("userid", userid);
		// 세션객체에 userid 변수 생성 후 아이디를 저장
		
		// 숫자형태의 시간을 현실 세계의 시간으로 변환
		System.out.println(session.getId());
		System.out.println(session.getCreationTime());
		System.out.println(session.getLastAccessedTime());
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MMdd hh:mm:ss ");
		long ctime = session.getCreationTime();
		long latime = session.getLastAccessedTime();
		
		System.out.println(sdf.format(new Date(ctime)));
		System.out.println(sdf.format(new Date(latime)));
		
		response.sendRedirect("myinfo.jsp");
		
	} else
		
		response.sendRedirect("loginFail.jsp");
	
		
	
%>
