<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	//������ ���Ͽ� id�� �о�帲
	String id = (String)session.getAttribute("id");

	//�α����� �Ǿ����� �ʴٸ� session���� null�� �Ǽ� nulló���� ����
	if(id ==null){
		id="�մ�";
	}
%>




	<!-- Top  -->
	<table width="800">
		<tr height="100">
			<!-- �ΰ� -->
			<td colspan="2" align="center" width="260">
			<img alt="logo"	src="img/logo.JPG" width="200" height="70"></td>

			<td colspan="5" align="center"><font size="10">���� ķ��</font></td>
		</tr>

		<tr height="50">
			<td width="110" align="center">��Ʈ</td>
			<td width="110" align="center">����</td>
			<td width="110" align="center">�ı��</td>
			<td width="110" align="center">ħ��</td>
			<td width="110" align="center">���̺�</td>
			<td width="110" align="center">ȭ�Ե�</td>
			<td width="140" align="center"><%=id%>��</td>
		</tr>

	</table>



</body>
</html>