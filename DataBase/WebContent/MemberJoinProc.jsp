<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("EUC-KR"); // �ѱ� ó��
		
		//��� �κ��� ������ �о��� �ٽ� ��Ŭ������ �����ؾߵ�(�迭�� ����Ǳ� ������)
		String[] hobby= request.getParameterValues("hobby");
		
		//�迭�� �ִ� ������ �ϳ��� ��Ʈ������ ����
		String texthobby="";
		
		for(int i=0; i<hobby.length; i++){
			texthobby += hobby[i]+ " ";
		}
	%>

	
	<!-- useBean�� �̿��� �Ѳ����� �����͸� �޾ƿ� -->

	<jsp:useBean id="mbean" class="model.MemberBean">
		<jsp:setProperty name="mbean" property="*"/> <!-- MemberBean.jsp�κ��� ���� ���� �ڹٺ� �ִ� MemberBean.java�� �� ���� -->
	</jsp:useBean>

	<%
		mbean.setHobby(texthobby); //���� ��̴� �ּҹ����� ����Ǳ⿡, ���� �迭�� ������ �ϳ��� ��Ʈ������ ������ ������ �ٽ� �Է�	
		
		
		//������ ���̽�Ŭ���� ��ü ����
		MemberDAO mdao = new MemberDAO();
		//�ڹٺ����� ������ ��簪��(id����  mbean���� ����� ��� �Ӽ���) mdao�� insert�޼ҵ忡 �״�� ����
		mdao.insertMember(mbean);
	%>
	



</body>
</html>