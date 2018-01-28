<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<body>

<%
	request.setCharacterEncoding("EUC-KR");

	//아이디 저장 체크 박스가 체크되었는 판단 여부
	String save = request.getParameter("save");
	//아이디 값을 저장
	String id = request.getParameter("id");
	
	//체크박스에 체크되었는지를 비교 판단
	if(save!=null){ //아이디 저장이 눌렸다면
		
		//쿠키를 사용하려면 - 쿠키클래스를 생성해주어야함
		Cookie cookie = new Cookie("id",id); //쿠키 생성자는 반드시 키와 밸류를 적어줘야함(1번째 String은 키값. 2번째는 value값을 넣어줌)
		
		//쿠키 유효시간 설정(60초 * 10)
		cookie.setMaxAge(60*3); //10분간 유효
		
		//사용자에게 쿠키 값을 넘겨줌(서버에서 쿠키를 생성하고, 클라이언트쪽에 저장하기위해 response객체를 이용해야함)
		response.addCookie(cookie);
		
		out.write("쿠키 생성 완료!");
	}
%>


	


</body>
</html>