<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>

<% 
		//�ѿ����� ������ �ѱ۱��� ���� ����
		request.setCharacterEncoding("EUC-KR");
	%>
	
		<jsp:useBean id="mbean" class="model.MemberBean">
			<jsp:setProperty name="mbean" property="*"/>
		</jsp:useBean>
	
	<%
	
		MemberDAO mdao = MemberDAO.getInstance();
		
		//��Ʈ��Ÿ������ ����Ǿ��ִ� �н����� ������
		String pass =mdao.getPass(mbean.getId());
		
		//�����ϱ����� �ۼ��� �н����尪�� ���� ������ ���̽����� ������ �н����尪�� ��
		if(mbean.getPass1().equals(pass)){ //���� �н��� �����ͺ��̽��н��� ���ٸ�  member���̺� ����
			
			//MemberDaoŬ������ ȸ������ �޼ҵ� ȣ��
			mdao.deleteMember(mbean.getId());
			response.sendRedirect("MemberList.jsp");
			
		}
		
		else{
	%>		
		<script type="text/javascript">
			alert("�н����尡 ���� �ʽ��ϴ�. �ٽ� Ȯ���� �ּ���");
			history.go(-1);
		</script>
	
	<%
		}
	%>






</body>
</html>