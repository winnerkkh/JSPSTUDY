<%@page import="model.MemberBean"%>
<%@page import="java.util.Vector"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>

	<!-- 1. �����ͺ��̽����� ��� ȸ���� ������ ������ -->
	<!-- 2. table�±׸� �̿��Ͽ� ȭ�鿡 ȸ������ ������ ��� -->

	<%
		MemberDAO mdao = MemberDAO.getInstance();

		//ȸ������ ������ �󸶳� ����Ǿ��ִ��� �𸣱⿡ ����������  Vector�� �̿��Ͽ� �����͸� ��������
		Vector<MemberBean> vec = mdao.allSelectMember();
	%>


	<center>
		<h2>��� ȸ�� ����</h2>
		<table width="800" border="1">
			<tr height="50">
				<th align="center" width="150">���̵�</th>
				<th align="center" width="250">�̸���</th>
				<th align="center" width="200">��ȭ��ȣ</th>
				<th align="center" width="200">���</th>
			</tr>

			<%
				for (int i = 0; i < vec.size(); i++) {
					MemberBean bean = vec.get(i); // ���Ϳ� ��� ��Ŭ������ �ϳ��� ���� bean Ŭ������ ����
			%>

			<tr height="50">		
				<td align="center" width="150">
				
				<!--���̵���  MemberInfo.jsp�� �Ѱ���  -->
				<a href="MemberInfo.jsp?id=<%=bean.getId()%>">
				
				<%=bean.getId()%></a></td>
				
				
				<td align="center" width="250"><%=bean.getEmail()%></td>
				<td align="center" width="200"><%=bean.getTel()%></td>
				<td align="center" width="200"><%=bean.getHobby()%></td>
			</tr>

			<%
				}
			%>
		</table>
	</center>




</body>
</html>