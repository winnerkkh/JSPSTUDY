<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<%
	//로그아웃 클릭시 파라미터를 통해서 로그아웃 인지의 여부를 파악
	String logout = request.getParameter("logout");
	
	if(logout!=null){
		//id에 null값을 부여
		session.setAttribute("id", null);
			
		//세션 유지시간을 죽이시오
		session.setMaxInactiveInterval(0);
	}
	
	//세션을 통하여 id를 읽어드림
	String id = (String)session.getAttribute("id");

	//로그인이 되어있지 않다면 session값이 null이 되서 null처리를 해줌
	if(id ==null){
		id="손님";
	}
%>




	<!-- Top  -->
	<table width="800">
		<tr height="100">
			<!-- 로고 -->
			<td colspan="2" align="center" width="220">
			<img alt="logo"	src="C:\JSPSTUDY\CookieSession\WebContent\img\logo.JPG" width="200" height="70"></td>

			<td colspan="5" align="center"><font size="10">낭만 캠핑</font></td>
		</tr>

		<tr height="50">
			<td width="100" align="center">텐트</td>
			<td width="100" align="center">의자</td>
			<td width="100" align="center">식기류</td>
			<td width="100" align="center">침낭</td>
			<td width="100" align="center">테이블</td>
			<td width="100" align="center">화롯데</td>
			<td width="200" align="center">


	<%
		if(id.equals("손님")){
	%>
		<%=id%>님 <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>
		
	<% }else{ %>
	
	<%=id%>님 <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>
	<% } %>	
	
		 </td>
	 </tr>
	</table>



</body>
</html>