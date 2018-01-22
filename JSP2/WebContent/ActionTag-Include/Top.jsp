<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- Top  -->
	<table width="800">
		<tr height="100">
			<!-- 로고 -->
			<td colspan="2" align="center" width="260">
			<img alt="logo"	src="/JSP2/WebContent/img/logo.JPG" width="200" height="70"></td>

			<td colspan="5" align="center"><font size="10">낭만 캠핑</font></td>
		</tr>

		<tr height="50">
			<td width="110" align="center">텐트</td>
			<td width="110" align="center">의자</td>
			<td width="110" align="center">식기류</td>
			<td width="110" align="center">침낭</td>
			<td width="110" align="center">테이블</td>
			<td width="110" align="center">화롯데</td>
			<td width="140" align="center"><%=request.getParameter("id") %></td>
		</tr>

	</table>



</body>
</html>