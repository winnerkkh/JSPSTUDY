<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("EUC-KR"); // 한글 처리
		
		//취미 부분은 별도록 읽어드려 다시 빈클래스에 저장해야됨(배열로 저장되기 때문에)
		String[] hobby= request.getParameterValues("hobby");
		
		//배열에 있는 내용을 하나의 스트링으로 저장
		String texthobby="";
		
		for(int i=0; i<hobby.length; i++){
			texthobby += hobby[i]+ " ";
		}
	%>

	
	<!-- useBean을 이용한 한꺼번에 데이터를 받아옴 -->

	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*"/> <!-- MemberBean.jsp로부터 받은 값을 자바빈에 있는 MemberBean.java로 값 대입 -->
	</jsp:useBean>

	<%
		mbean.setHobby(texthobby); //기존 취미는 주소번지가 저장되기에, 위에 배열의 내용을 하나의 스트링으로 저장한 변수를 다시 입력	
		
		
		//데이터 베이스클래스 객체 생성
		MemberDAO mdao = MemberDAO.getInstance();
		//자바빈으로 저장한 모든값을(id값에  mbean으로 저장된 모든 속성을) mdao에 insert메소드에 그대로 대입
		mdao.insertMember(mbean);
		
		
		//회원 가입이 되었다면 회원 정보를 보여주는 페이지로 이동시킴
		response.sendRedirect("MemberList.jsp");
	%>
	



</body>
</html>