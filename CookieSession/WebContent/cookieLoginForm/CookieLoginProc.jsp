<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<body>

<%
	request.setCharacterEncoding("EUC-KR");

	//���̵� ���� üũ �ڽ��� üũ�Ǿ��� �Ǵ� ����
	String save = request.getParameter("save");
	//���̵� ���� ����
	String id = request.getParameter("id");
	
	//üũ�ڽ��� üũ�Ǿ������� �� �Ǵ�
	if(save!=null){ //���̵� ������ ���ȴٸ�
		
		//��Ű�� ����Ϸ��� - ��ŰŬ������ �������־����
		Cookie cookie = new Cookie("id",id); //��Ű �����ڴ� �ݵ�� Ű�� ����� ���������(1��° String�� Ű��. 2��°�� value���� �־���)
		
		//��Ű ��ȿ�ð� ����(60�� * 10)
		cookie.setMaxAge(60*3); //10�а� ��ȿ
		
		//����ڿ��� ��Ű ���� �Ѱ���(�������� ��Ű�� �����ϰ�, Ŭ���̾�Ʈ�ʿ� �����ϱ����� response��ü�� �̿��ؾ���)
		response.addCookie(cookie);
		
		out.write("��Ű ���� �Ϸ�!");
	}
%>


	


</body>
</html>