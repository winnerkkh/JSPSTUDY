<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>


	<center>
	<h2>���� �α��� ó��1</h2>
		<%
			request.setCharacterEncoding("EUC-KR");

			String id = request.getParameter("id");
			String pass = request.getParameter("pass");
			
			//session�� ���尴ü�̱⿡ ���� �����ڸ� ������ �ʿ䰡 ����
			session.setAttribute("id",id);
			session.setAttribute("pass",pass);
			
			//session�� �����ð� ����(60�ʰ� ����)
			session.setMaxInactiveInterval(60*2); //2�а� ���̵� ����
			
			response.sendRedirect("SessionMain.jsp");
		%>
		
		
		
<%-- 		
		<h2>����� ���̵�� <%=id%> �Դϴ�.</h2>
		<h2>����� �н������ <%=pass%> �Դϴ�.</h2>
		
		<a href="SessionLoginProc2.jsp">���� �������� �̵�</a>
		
		<!-- �Ʒ��� ���� ���� �������� SessionLoginProc2.jsp �Ѱ��ٰ�� ��й�ȣ�� URL�� �״�� ���� -->
		<a href="SessionLoginProc2.jsp?id=<%=id%>&pass=<%=pass%>">���� �������� �̵�</a>

 --%>
 
 
	</center>
</body>
</html>