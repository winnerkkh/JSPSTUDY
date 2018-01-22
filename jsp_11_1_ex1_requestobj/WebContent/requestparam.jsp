<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	String name, id, pw, major, protocol;
	String[] hobbys;
%>

<%
	request.setCharacterEncoding("EUC-KR");
	
	name = request.getParameter("name");
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	major = request.getParameter("major");
	protocol = request.getParameter("protocol");
	
	hobbys = request.getParameterValues("hobby");
%>

이름 : <%= name %><br />
아이디 : <%= id %><br />
비밀번호 : <%= pw %><br />
취미 : <%= Arrays.toString(hobbys) %><br />
전공 : <%= major %><br />
프로토콜 : <%= protocol %><br />

<!-- 
Jsp페이지를 제작하는 목적이 데이터 값을 전송하기 위해서 이므로, parameter 관련 메소드은 중요 합니다.

getParameter(String name) : name에 해당하는 파라미터 값을 구함.
getParameterNames() : 모든 파라미터 이름을 구함.
getParameterValues(String name) : name에 해당하는 파라미터값들을 구함. 

-->



</body>
</html>