<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%! /*선언부, 선언된 변수 혹은 메소드들은 전역으로 활용됨  */
		int i = 10;
		String str = "abc";
		
		private int sum(int a, int b) {
			return a+b;
		}
	%>
	
	<!-- <%= %> 표현식(expression)이며 jsp페이지 내에서 사용되는 변수의 값 또는 메소드 호출 결과값을 출력하기 위해 사용 된다.  
		결과값은 String 타입이며, ";"를 사용할수 없다-->
	<%= i %><br />
	<%= str %><br />
	<%= sum(1, 5) %>

</body>
</html>