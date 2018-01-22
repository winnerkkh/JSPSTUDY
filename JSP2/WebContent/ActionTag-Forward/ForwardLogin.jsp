<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- forward 액션태그는 페이지 사이의 제어를(값들) 이동시킬때 사용 -->

	<center>
		<form action="ResponseProc.jsp" method="post">
			<table width="400" border="1">
				<tr height="50">
					<td width="150">아이디</td>
					<td><input type="text" name="id"></td>
				</tr>

				<tr height="50">
					<td width="150">패스워드</td>
					<td><input type="password" name="pass"></td>
				</tr>

				<tr height="50">
					<td align="center" colspan="2">
						<input type="submit" value="전송"> &nbsp;&nbsp;
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>