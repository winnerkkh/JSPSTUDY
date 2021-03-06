<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

	
	<% 
		//넘오오는 값들의 한글깨짐 현상 방지
		request.setCharacterEncoding("EUC-KR");
	%>
	
		<jsp:useBean id="mbean" class="model.MemberBean">
			<jsp:setProperty name="mbean" property="*"/>
		</jsp:useBean>
	
	<%
		String id = request.getParameter("id");
	
		MemberDAO mdao = MemberDAO.getInstance();
		
		//스트링타입으로 저장되어있는 패스워드 가져옴
		String pass =mdao.getPass(id);
		
		//수정하기위해 작성한 패스워드값과 기존 데이터 베이스에서 가져온 패스워드값을 비교
		if(mbean.getPass1().equals(pass)){ //기존 패스와 데이터베이스패스가 같다면  member테이블 수정
			
			//MemberDao클래스의 회원수정 메소드 호출
			mdao.updateMember(mbean);
			response.sendRedirect("MemberList.jsp");
			
		}
		
		else{
	%>		
		<script type="text/javascript">
			alert("패스워드가 맞지 않습니다. 다시 확인해 주세요");
			history.go(-1);
		</script>
	
	<%
		}
	%>



</body>
</html>