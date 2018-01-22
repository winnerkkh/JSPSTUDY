<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- 지시자를 이용해 예외페이지를 명시해야함=> 기본값은 false임 ,
	 true로 설정시 exception 객체를 사용할수 있다  -->
<%@ page isErrorPage="true"%>

<!--  
	현제 페이지는 에러라고 알려주기 위한 정상적인 페이지인데 간혹 status가 500인 상태로 설정이 되는 경우가 있음
	500은 서버 내부의  연산  오류임
-->
<% response.setStatus(200); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	에러 발생<br />
	<%= exception.getMessage() %>
</body>
</html>