<%@page import="model.MemberBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>


		<%
		
			String id = request.getParameter("id");
		
			MemberDAO mdao = MemberDAO.getInstance();
		
			MemberBean mbean = mdao.oneSelectMember(id);
	
		%>
		
		<center>
		<h2><%=mbean.getId() %> ȸ���� ���� ���� �ϱ�</h2>
		  
			<table width="400" border="1">	
			  <form action="MemberUpdateProc.jsp" method="post">
				<tr height="50">
					<td align="center" width="150">���̵�</td>
					<td width="250"><%=mbean.getId() %></td>
				</tr>
				<tr height="50">
					<td align="center" width="150">�̸���</td>
					<td width="250"><input type="email" name="email" value="<%=mbean.getEmail() %>"></td>
				</tr>				
				<tr height="50">
					<td align="center" width="150">��ȭ</td>
					<td width="250"><input type="tel" name="tel" value="<%=mbean.getTel() %>"></td>
				</tr>
				
				<tr height="50">
					<td align="center" width="150">�н�����</td>
					<td width="250"><input type="password" name="pass1"></td>
				</tr>				
											
				<tr height="50">
					<td align="center" colspan=2>
					
					<!-- ���̵��� �Ѱ�����  ����ڿ��� ���̵� ������ ���� �Ұ��� �ϰ��ϰ�,���ݺ����� �Ұ����ϱ� ���ؼ�
						  ���̵��� ���ܼ� MemberList.jsp�� �Ѱ��ش�
					 -->
					<input type="hidden" name="id" value="<%=mbean.getId()%>">
					<input type="submit" value="ȸ�� �����ϱ�"> &nbsp;&nbsp;
				</form>		
					
					<button onclick="location.href='MemberList.jsp'">ȸ�� ��ü ����</button>
					</td>
				</tr>	   		
			</table>
		  	
		</center>
</body>
</html>