<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!-- �����ڸ� �̿��� ������������ ����ؾ���=> �⺻���� false�� ,
	 true�� ������ exception ��ü�� ����Ҽ� �ִ�  -->
<%@ page isErrorPage="true"%>

<!--  
	���� �������� ������� �˷��ֱ� ���� �������� �������ε� ��Ȥ status�� 500�� ���·� ������ �Ǵ� ��찡 ����
	500�� ���� ������  ����  ������
-->
<% response.setStatus(200); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� �߻�<br />
	<%= exception.getMessage() %>
</body>
</html>