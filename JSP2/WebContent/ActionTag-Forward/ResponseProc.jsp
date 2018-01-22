<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>이 페이지는 로그인 정보가 넘어오는 페이지 입니다.</h2>

	<%
	request.setCharacterEncoding("UTF-8"); //post 방식 한글 처리 
	
	String id = request.getParameter("id"); //request객체에 담겨진 사용자 정보중 id만 추출
	
	//response.sendRedirect("ResponseRedirect.jsp"); //흐름 제어
	//만약 sendRedirect를 실행 시키면 현재 페이지가 실행되는게 아니라  response객체를 만나는 순간
	//ResponseRedirect.jsp로 이동하지만, 문제는 id의 값이 현재 페이지에만 저장되고
	//ResponseRedirect.jsp에는 아이디 값이 전달이 안됨.
	

%>
	<!-- 현재 페이지에서 가지고 있는 정보들을(값들 모두) ResponseRedirect.jsp에 넘겨줌 -->
	<!-- 메인페이지에서 phone값이 존재 하지 않지만 현재 ResponseProc에서 설정해줄경우, ResponseRedirect.jsp에 phone값도 전달됨 -->
	<!--id값이 이미 존재하지만, 만약 이렇게 써줄경우 값이 유지되지 않으며 새로운 값으로 id에 할당됨   -->
	<jsp:forward page="ResponseRedirect.jsp"> 
		<jsp:param value="mmm" name="id"/> 
		<jsp:param value="123-123-123" name="phone"/> 
	</jsp:forward>
	<h3>아이디: <%=id%></h3>

</body>
</html>