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
		
		//getAttribute("mySessionName")은 mySessionName의 속성 값을 반환함
		Object obj1 = session.getAttribute("mySessionName");
	
		//getAttribute 반환값은 Object이기때문에
		//String으로 값 저장시 캐스팅을 해줘야함
		String mySessionName = (String)obj1;
		out.println(mySessionName +"<br />");
		
		Object obj2 = session.getAttribute("myNum");
		Integer myNum = (Integer)obj2;
		out.println(myNum +"<br />");
		out.println("************************ <br />");
		
		
		String sName;
		String sValue;
		// getAttributeNames()=> 모든 세션 이름들을 불러옴
		// 모든 세션이름을 불러오기에  Enumeration 객체를 이용해 직렬화 해야함 		
		Enumeration enumeration = session.getAttributeNames();
		
		//값이 여러개 이기 때문에 hasMoreElements()를 이용해 
		while(enumeration.hasMoreElements()){
			
			//세션이름을 저장
			sName = enumeration.nextElement().toString();
			
			//저장된 세션 이름을 통하여 value(값)을 저장
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}
		out.println("************************ <br />");
		
		
		
		// 한 브라우저당 고유의(유니크한) 세션 ID가 컨테이너가 알아서 자동으로 생성해준다.
		// 브라우저에 맞는 맺칭되는 아이디를 가져올때 사용되는 메소드가 getId() 메소드
		String sessionID = session.getId();
		out.println("sessionID : " + sessionID + "<br />");
		
		//세션 유효시간을 가져오는 메소드 getMaxInactiveInterval()
		int sessionInter =  session.getMaxInactiveInterval();
		out.println("sessionInter : " + sessionInter + "<br />");		
		out.println("************************ <br />");
		
		
		//특정 세션의 데이타값을 삭제
		//세션을 삭제하는 메소드 removeAttribute("mySessionName"); =>mySessionName의 세션을 삭제한다는 의미
		session.removeAttribute("mySessionName");
		
		Enumeration enumeration1 = session.getAttributeNames();
		while(enumeration1.hasMoreElements()){
			sName = enumeration1.nextElement().toString();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br />");
			out.println("sValue : " + sValue + "<br />");
		}
		out.println("************************ <br />");
		
		
		//모든 세션의 데이타값을 삭제
		session.invalidate();
		
		// isRequestedSessionIdValid() 유효현 세션이 존재하는지 확인 하는 메소드
		// 반환값은 true or false로 반환됨
		if(request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} else {
			out.println("session invalid");
		}
	%>

</body>
</html>