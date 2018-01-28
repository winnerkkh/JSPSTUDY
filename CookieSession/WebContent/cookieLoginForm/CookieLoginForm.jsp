<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	
	<%
		//사용자 컴퓨터의(클라이언트) 쿠키 저장소로부터 쿠키값을 읽어드려야하는데,
		//쿠키가 몇개인지 모르기때문에 배열을 이용하여 쿠키값을 저장		
		Cookie[] cookies = request.getCookies();
		String id = "";
		//쿠키값이 없을수도 있기에 항상 null처리를 해줘야함
		if(cookies !=null){
			//배열타입으로 처리해줘야함
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("id")){ // id로 해주는 이유는 CookieLoginProc에 쿠키 아이디를 "id"로 해줬기때문임
					id = cookies[i].getValue();
					break; //우리가 원하는 데이터를 찾았기에 반복문을 빠져 나옴
				}
			}
			
		}	
	%>



	<center>
		<h2>쿠키 로그인</h2>
		<form action="CookieLoginProc.jsp" method="post">
			<table border=1>
				<tr height="50">
					<td width="150">아이디</td>	<!--쿠기가 존재한다면 존재하는 쿠키값을 가지고 서버에 요청  -->
					<td width="250"><input type="text" name="id" value="<%=id%>"></td>
				</tr>
				<tr height="50">
					<td width="150">패스워드</td>
					<td width="250"><input type="password" name="pass"></td>
				</tr>				
				<tr height="50">
					<td colspan="2" align="center"><input type="checkbox" name="save" value="1">아이디 저장</td>
					
				</tr>
				<tr height="50">
					<td colspan="2" align="center"><input type="submit" value="로그인"></td>
				</tr>				

			</table>
		</form>


	</center>



</body>
</html>