<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	//내장객체들은 스크립틀릿 안에서만 사용가능

	<h2>세션 연습</h2>
	<%
		String name = "Kim";
	
		//세션을 이용하여 데이터를 전송
		session.setAttribute("name1", name); // session.setAttribute("키", 값); 
											 //name이 스트링 타입이지만, 실제로는  파라미터 안은 Object들어간것임
											 
		//세션 유지 시간
		session.setMaxInactiveInterval(10); //10초간 세션을 유지
	%>
	
	<a href="SessionName.jsp">세션네임페이지로 이동</a>


</body>
</html>