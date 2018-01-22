<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>1부터 10까지 출력 프로그램</h2>

	<%
		//1-10까지의 숫자를 화면에 출력하시오!
		for (int i = 1; i <= 10; i++) {
	%>

		<%=i%> <br> <%-- 표현식(<%=%>)은 자바코드내에 사용 할수 없기 때문에 
			                 스크립틀릿을 닫아준후에 사용하여야 한다.--%> 
			   
	
	<%
		}
	%>



</body>
</html>