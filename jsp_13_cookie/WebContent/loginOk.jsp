<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		//html로부터 받은 정보를 request객체를 이용하여 저장
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		//입력된 정보가 DB? 에 있는 id와 패스워드 정보가 일치하는지 검사
		if(id.equals("abcde") && pw.equals("12345")) {
			
			// 쿠키 객체 생성
			// id값에다가 사용자가 입력한 값을 그대로 설정
			// Cookie("쿠키 아이디", 값(value))
			Cookie cookie = new Cookie("id", id);
			
			//쿠기 유지시간 1분으로 설정
			cookie.setMaxAge(60);
			
			//reponse객체에 쿠키 탑재
			response.addCookie(cookie);
			
			//"welcome.jsp" 페이지로 이동
			response.sendRedirect("welcome.jsp");
			
		} else {
			
			// 만약 사용자가 입력한 정보중 false값이 들어오면
			// 다시 로그인 창으로 전환
			response.sendRedirect("login.html");
		}
	%>

</body>
</html>