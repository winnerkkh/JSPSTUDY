<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--���������� ���� ������ � ������ ��û�ϴ� ���� request��� �մϴ�.
		�׸��� �̷��� ��û ������ request��ü�� ���� �մϴ�.  -->
	
	<%
		out.println("���� : " + request.getServerName() + "<br />");
		out.println("��Ʈ ��ȣ : " + request.getServerPort() + "<br />");
		out.println("��û ��� : " + request.getMethod() + "<br />");
		out.println("�������� : " + request.getProtocol() + "<br />");
		out.println("URL : " + request.getRequestURL() + "<br />");
		out.println("URI : " + request.getRequestURI() + "<br />");
		out.println("���ؽ�Ʈ �о� : " + request.getContextPath() + "<br />");
	%>
	
	
<!-- 	getContextPath() : �����ø����̼��� ���ؽ�Ʈ �н��� ����ϴ�.
		getMethod() : get��İ� post����� ������ �� �ֽ��ϴ�.
		getSession() : ���� ��ü�� ����ϴ�.
		getProtocol() : �ش� ���������� ����ϴ�.
		getRequestURL() : ��û URL�� ����ϴ�.
		getRequestURI() : ��û URI�� ����ϴ�.
		getQueryString() : ������Ʈ���� ����ϴ�. 
	-->
	
	
	
	
	
	

</body>
</html>