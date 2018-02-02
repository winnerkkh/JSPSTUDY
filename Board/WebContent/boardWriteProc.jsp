<%@page import="model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>



	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<!-- 게시글 작성한 데이터를 한번에 읽어드림 -->
	
	<jsp:useBean id="boardBean" class="model.BoardBean">
		<jsp:setProperty name="boardBean" property="*"/>
	</jsp:useBean>
	
	<%
		//데이터베이스 쪽으로  boardBean클래스를 넘겨줌
		BoardDAO bdao = BoardDAO.getInstance();
	
		//데이타 저장 메소드를 호출(insertBoard메소드에 파라미터값으로 boardBean값을 넘겨줌)
		bdao.insertBoard(boardBean);
		
		//게시글 저장후 전체게시글 보기
		response.sendRedirect("BoardList.jsp");
	
	%>
</body>
</html>