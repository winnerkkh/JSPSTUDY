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
	<table border="1" width="800" align="center">

		<!-- Top  -->
<!-- 		현재 페이지에서 include 액션태그를 만나는 순간 포함된 페이지를 먼져 실행 시킨후 컴파일후 결과를 현재페이지로 리턴한다.
		만약 include 액션 태그에 파라미터 이름과 값을 넘겨준다면 그 값을 가지고 포함된 페이지로 함께 이동이 되어 연산후 현재 페이지로 리턴한다 -->
		<tr>
			<td align="center" colspan="2">
				<jsp:include page="Top.jsp">
					<jsp:param value="KH" name="id"/>
				</jsp:include>
			</td>
		</tr>
		
		
		<!-- Left -->
		<tr height="400">
			<td align="center" width="200">
			<jsp:include page="Left.jsp"/>

		
		<!-- Center -->
			<td align="center">
			<jsp:include page="Center.jsp"/>
		</tr>
		
		<!-- Bottom -->
		<tr height="100">
			<td align="center" colspan="2">
			<jsp:include page="Bottom.jsp"/>
		</tr>		

	</table>
</center>



</body>
</html>