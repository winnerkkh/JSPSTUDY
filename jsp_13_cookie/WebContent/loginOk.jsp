<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		String id, pw;
	%>
	<%
		//html�κ��� ���� ������ request��ü�� �̿��Ͽ� ����
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		//�Էµ� ������ DB? �� �ִ� id�� �н����� ������ ��ġ�ϴ��� �˻�
		if(id.equals("abcde") && pw.equals("12345")) {
			
			// ��Ű ��ü ����
			// id�����ٰ� ����ڰ� �Է��� ���� �״�� ����
			// Cookie("��Ű ���̵�", ��(value))
			Cookie cookie = new Cookie("id", id);
			
			//��� �����ð� 1������ ����
			cookie.setMaxAge(60);
			
			//reponse��ü�� ��Ű ž��
			response.addCookie(cookie);
			
			//"welcome.jsp" �������� �̵�
			response.sendRedirect("welcome.jsp");
			
		} else {
			
			// ���� ����ڰ� �Է��� ������ false���� ������
			// �ٽ� �α��� â���� ��ȯ
			response.sendRedirect("login.html");
		}
	%>

</body>
</html>