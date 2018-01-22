<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 쿠키를 생성하고 속성을 지정하고 response객체에 반드시 탑재를 시켜야함 -->
<!-- 쿠키를 받을땐 반드시 request객체로 받아야하고, 수정할려면 다시 response객체를 이용하여 다시 탑재시켜야함 -->
	<%
		//쿠기 객체 생성                 //쿠기 생성자에, 쿠기 이름과 속성값 지정
		Cookie cookie = new Cookie("cookieN", "cookieV");
		cookie.setMaxAge(60*60);	//1시간
		response.addCookie(cookie);
	%>
	
	<a href="cookieget.jsp">cookie get</a>
	
	
</body>
</html>