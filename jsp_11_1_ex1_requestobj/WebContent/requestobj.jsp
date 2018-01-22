<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--웹브라우저를 통해 서버에 어떤 정보를 요청하는 것을 request라고 합니다.
		그리고 이러한 요청 정보는 request객체가 관리 합니다.  -->
	
	<%
		out.println("서버 : " + request.getServerName() + "<br />");
		out.println("포트 번호 : " + request.getServerPort() + "<br />");
		out.println("요청 방식 : " + request.getMethod() + "<br />");
		out.println("프로토콜 : " + request.getProtocol() + "<br />");
		out.println("URL : " + request.getRequestURL() + "<br />");
		out.println("URI : " + request.getRequestURI() + "<br />");
		out.println("컨텍스트 패쓰 : " + request.getContextPath() + "<br />");
	%>
	
	
<!-- 	getContextPath() : 웹어플리케이션의 컨텍스트 패스를 얻습니다.
		getMethod() : get방식과 post방식을 구분할 수 있습니다.
		getSession() : 세션 객체를 얻습니다.
		getProtocol() : 해당 프로토콜을 얻습니다.
		getRequestURL() : 요청 URL를 얻습니다.
		getRequestURI() : 요청 URI를 얻습니다.
		getQueryString() : 쿼리스트링을 얻습니다. 
	-->
	
	
	
	
	
	

</body>
</html>