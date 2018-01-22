<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

	<!-- RequestLogin에서 넘어온 아이디와 패스워드를 읽어드림  -->
	
	<%
		//사용자의 정보가 저장되어있는 객체가 request의  getParameter() 메소드를 이용해서 정보를 추출할수 있다.
		String id = request.getParameter("id"); //사용자의 id값을 읽어변수 id에 저장한다
		String password = request.getParameter("pass"); 
	%>
	
	<h2>
	당신의 아이디는 <%=id %> 입니다. <br>
	당신의 패스워드는 <%=password %> 입니다
	</h2>

</body>
</html>