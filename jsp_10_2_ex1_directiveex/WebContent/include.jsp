
<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> include.jsp 페이지 입니다. </h1><br />
	
	<!-- 다른 페이지를  현재 페이지에 포함할때 사용된다. -->
	<!-- "file" 속성을 이용 합니다 -->	
	<%@ include file="include01.jsp" %>
	<h1> 다시 include.jsp 페이지 입니다. </h1><br />

</body>
</html>