<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>


	<center>
	<h2>세션 로그인 처리1</h2>
		<%
			request.setCharacterEncoding("EUC-KR");

			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			
			//session은 내장객체이기에 따로 생성자를 생성할 필요가 없다
			session.setAttribute("id",id);
			session.setAttribute("pass",pass);
			
			//session의 유지시간 설정(60초간 유지)
			session.setMaxInactiveInterval(60*2); //2분간 아이디 유지
			
			response.sendRedirect("SessionMain.jsp");
		%>
		
		
		
<%-- 		
		<h2>당신의 아이디는 <%=id%> 입니다.</h2>
		<h2>당신의 패스워드는 <%=pass%> 입니다.</h2>
		
		<a href="SessionLoginProc2.jsp">다음 페이지로 이동</a>
		
		<!-- 아래와 같이 다음 페이지인 SessionLoginProc2.jsp 넘겨줄경우 비밀번호가 URL에 그대로 노출 -->
		<a href="SessionLoginProc2.jsp?id=<%=id%>&pass=<%=pass%>">다음 페이지로 이동</a>

 --%>
 
 
	</center>
</body>
</html>