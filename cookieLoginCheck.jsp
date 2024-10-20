<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		1. 넘어온 데이터 받기
		
		2. id가 hong 이고 pw가 1234 라면 
		   id값을 쿠키값으로 설정하여 쿠키객체 생성 new Cookie("id", id);
		   쿠키객체를 웹브라우저에 심은다음 cookieMain.jsp로 리다이렉트 하기
		   
		3. id, pw 가 틀리다면 cookieLogin.jsp로 리다이렉트 하기
		
	 --%>
	
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("hong") && pw.equals("1234")){
			
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60 * 60);
			response.addCookie(cookie);
			response.sendRedirect("cookieMain.jsp");
			
		}else{
			response.sendRedirect("cookieLogin.jsp");
		}
	
	%>
	
	
</body>
</html>