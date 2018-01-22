<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>
	
	<h2>회원정보 보기</h2>
		<%
			request.setCharacterEncoding("UTF-8");
		%>
		
		<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑 시켜주는 useBean -->
		<jsp:useBean id="mbean" class="bean.MemberBean"> <!-- 객체생성  MemberBeab mbean = new MemberBean() -->
			
			<!-- jsp내용을 자바빈 클래스(MemberBean의미)에 데이터를 맵핑(데이터를 넣어준다) -->
			<jsp:setProperty name="mbean" property="id"/> <!-- 메인페이지에서 입력한 id값을 자바빈에 id 필드에 입력시켜주는것 -->
			<jsp:setProperty name="mbean" property="*"/> <!-- 자동으로 순서대로 모두 필드에 맵핑 시켜주는것 -->
		</jsp:useBean>
		
		<h2>당신의 아이디는 <jsp:getProperty property="id" name="mbean"/></h2>
		<h2>당신의 패스워드는 <jsp:getProperty property="pass1" name="mbean"/></h2>
		<h2>당신의 이메일 <jsp:getProperty property="email" name="mbean"/></h2>
		
		
		<!-- 아래와 같이 출력도 가능함 mbean은 유즈빈에서의 객처생성과 똑같기 때문에 사용이 가능하다 -->
		<h2>당신의 전화번호는 <%=mbean.getTel() %> </h2>
		
		
	</center>

</body>
</html>