<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<!-- forward 및 include 액션 태그에 데이터 전달을 목적으로 사용되는 태그. 이름과 값으로 이루어짐 -->
	<!-- url의 경우는 이동된 페이지의 url이 아니라 애초 실행된 url로 표시된다 -->
	<jsp:forward page="forward_param.jsp">
		<jsp:param name="id" value="abcdef" />
		<jsp:param name="pw" value="1234" />
	</jsp:forward>

</body>
</html>