<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<body>

		<center>
		<h2> ȸ�� �����ϱ�</h2>
		  
			<table width="400" border="1">	
			  <form action="MemberDeleteProc.jsp" method="post">
				<tr height="50">
					<td align="center" width="150">���̵�</td>
					
					<!-- MemberInfo.jsp���� ���̵� �ѱ�... -->
					<td width="250"><%=request.getParameter("id") %></td>
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
					<input type="hidden" name="id" value="<%=request.getParameter("id")%>">
					<input type="submit" value="ȸ�� �����ϱ�"> &nbsp;&nbsp;
				</form>		
					
					<button onclick="location.href='MemberList.jsp'">ȸ�� ��ü ����</button>
					</td>
				</tr>	   		
			</table>
		  	
		</center>









</body>
</html>