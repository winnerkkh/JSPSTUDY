<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<center>
		<h2>세션 로그인</h2>
		<form action="SessionLoginProc.jsp" method="post">
			<table border=1>
				<tr height="50">
					<td width="150">아이디</td> 
					<td width="250"><input type="text" name="id"></td>
				</tr>
				<tr height="50">
					<td width="150">패스워드</td>
					<td width="250"><input type="password" name="pass"></td>
				</tr>				
				<tr height="50">
					<td colspan="2" align="center"><input type="submit" value="로그인"></td>
				</tr>				

			</table>
		</form>


	</center>



</body>
</html>