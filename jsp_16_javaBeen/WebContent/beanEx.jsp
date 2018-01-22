<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    

<!--  
Javabean을 사용해야 한다고 할때 반드시 명시해줘야함 
 
id는 자바에서 reference변수라고 생각하면됨.
class는 자바파일(클래스)이 어디 있는지 있는 경로를 명시
scope은 범위를 말함    

Scope
page : 생성된 페이지 내에서만 사용 가능 합니다.
request : 요청된 페이지 내에서만 사용 가능 합니다.
session : 웹브라우저의 생명주기와 동일하게 사용 가능 합니다.
application : 웹 어플리케이션 생명주기와 동일하게 사용 가능 합니다   

 -->
 
<jsp:useBean id="student" class="com.javalec.ex.Student" scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<!--
		빈이란 반복적인 작업을 효율적우로 하기 위해 빈을 사용함
		빈이란? Java언어의 데이터(속성)과 기능(메소드)으로 이루어진 클래스 입니다.
		jsp페이지를 만들고, 액션태그를 이용하여 빈을 사용하여 빈의 내부 데이터를 처리 합니다.
	  -->
	
	<!--위에서 지정한 id값을 name에 지정  -->
	<jsp:setProperty name="student" property="name" value="홍길동"/>
	<jsp:setProperty name="student" property="age" value="13"/>
	<jsp:setProperty name="student" property="grade" value="6"/>
	<jsp:setProperty name="student" property="studentNum" value="7"/>
	
	이름 : <jsp:getProperty name="student" property="name" /><br />
	나이 : <jsp:getProperty name="student" property="age" /><br />
	학년 : <jsp:getProperty name="student" property="grade" /><br />
	번호 : <jsp:getProperty name="student" property="studentNum" /><br />


</body>
</html>