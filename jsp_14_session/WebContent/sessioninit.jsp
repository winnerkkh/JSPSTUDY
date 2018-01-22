<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%	
		//session은 내장객체이기때문에 생성하지 않아도 됨.
		//setAttribute를 이용하여 속성 저장  setAttribute("속성의 이름", "속성의 값");
		//여러개 지정가능
		session.setAttribute("mySessionName", "mySessionData");
		session.setAttribute("myNum", 12345);
	%>
	
	<a href="sessionget.jsp">session get</a>

</body>
</html>