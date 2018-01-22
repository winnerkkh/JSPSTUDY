<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
		request.setCharacterEncoding("UTF-8");
	
		//임의적으로 ID와 PASS를 설정
		String dbid = "aaaa";
		String dbpass = "1234";
		
		//사용자로부터 넘어온 데이터를 입력 받음.
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		if(dbid.equals(id) && dbpass.equals(pass)){
			
			//아이디와 패스워드가 일치하니까 메인 페이지를 보여주여야 한다.
				response.sendRedirect("ResponseMain.jsp?id=" +id);	 //?변수이름 = + 값
				//어떤 결과를 처리해서 결과가 만족하면 다른페이지를 보여줄수 있도록 하는것(값과 함께)
				
		} else{
	%>	
		<script type="text/javascript">
			alert("아이디와 비밀번호가 일치 하지 않습니다.");
			history.go(-1);
		</script>
	<% 
		}
	%>
	
	
		
		
		
		
		
		
		
	%>

</body>
</html>