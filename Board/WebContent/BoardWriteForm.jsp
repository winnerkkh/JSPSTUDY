<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<center>
		<h2>게시글 쓰기</h2>
		<form action="boardWriteProc.jsp" method="post">
			<table width="600" border="1" bordercolor="grey" bgcolor="skyblue" >
				<tr height="40">
					<td align="center" width="150">작성자</td>
					<td width="450"><input type="text" name="writer" size=55></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">제목</td>
					<td width="450"><input type="text" name="subject" size="55"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">이메일</td>
					<td width="450"><input type="email" name="email" size="55"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">비밀번호</td>
					<td width="450"><input type="password" name="password" size="55"></td>
				</tr>

				<tr height="40">
					<td align="center" width="150">글내용</td>
					<td width="450"><textarea rows="10" cols="60" name="content"></textarea></td>
				</tr>

				<tr height="40">
					<td align="center" colspan="2">
						<input type="submit" value="글쓰기"> &nbsp;&nbsp;
						<input type="reset" value="초기화"> &nbsp;&nbsp;
						<button onclick="location.href='BoardList.jsp'">전체 글보기</button>
					</td>
					
				</tr>
			</table>

		</form>

	</center>
</body>
</html>