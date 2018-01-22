<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>response.sendRedirect 정보가 넘어오는 페이지 입니다,</h2>

	<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String phone = request.getParameter("phone");
%>

	<h3> 아이디: <%=id%></h3>
	<h3> phone: <%=phone%></h3>
	
</body>
</html>