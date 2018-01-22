<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		
		//getAttribute("mySessionName")�� mySessionName�� �Ӽ� ���� ��ȯ��
		Object obj1 = session.getAttribute("mySessionName");
	
		//getAttribute ��ȯ���� Object�̱⶧����
		//String���� �� ����� ĳ������ �������
		String mySessionName = (String)obj1;
		out.println(mySessionName +"<br />");
		
		Object obj2 = session.getAttribute("myNum");
		Integer myNum = (Integer)obj2;
		out.println(myNum +"<br />");
		out.println("************************ <br />");
		
		
		String sName;
		String sValue;
		// getAttributeNames()=> ��� ���� �̸����� �ҷ���
		// ��� �����̸��� �ҷ����⿡  Enumeration ��ü�� �̿��� ����ȭ �ؾ��� 		
		Enumeration enumeration = session.getAttributeNames();
		
		//���� ������ �̱� ������ hasMoreElements()�� �̿��� 
		while(enumeration.hasMoreElements()){
			
			//�����̸��� ����
			sName = enumeration.nextElement().toString();
			
			//����� ���� �̸��� ���Ͽ� value(��)�� ����
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}
		out.println("************************ <br />");
		
		
		
		// �� �������� ������(����ũ��) ���� ID�� �����̳ʰ� �˾Ƽ� �ڵ����� �������ش�.
		// �������� �´� ��Ī�Ǵ� ���̵� �����ö� ���Ǵ� �޼ҵ尡 getId() �޼ҵ�
		String sessionID = session.getId();
		out.println("sessionID : " + sessionID + "<br />");
		
		//���� ��ȿ�ð��� �������� �޼ҵ� getMaxInactiveInterval()
		int sessionInter =  session.getMaxInactiveInterval();
		out.println("sessionInter : " + sessionInter + "<br />");		
		out.println("************************ <br />");
		
		
		//Ư�� ������ ����Ÿ���� ����
		//������ �����ϴ� �޼ҵ� removeAttribute("mySessionName"); =>mySessionName�� ������ �����Ѵٴ� �ǹ�
		session.removeAttribute("mySessionName");
		
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}
		out.println("************************ <br />");
		
		
		//��� ������ ����Ÿ���� ����
		session.invalidate();
		
		// isRequestedSessionIdValid() ��ȿ�� ������ �����ϴ��� Ȯ�� �ϴ� �޼ҵ�
		// ��ȯ���� true or false�� ��ȯ��
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

</body>
</html>