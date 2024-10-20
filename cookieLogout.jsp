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
		쿠키값이 "hong" 인 쿠키 삭제하기
		삭제 후에 리다이렉트로 cookieLogin.jsp 로 이동 요청하기
	 --%>
	
	
	<%
		Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			
			String id = cookies[i].getValue();
			
			if(id.equals("hong")){
				
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				response.sendRedirect("cookieLogin.jsp");
							
			}
			
		}
	
	%>
	
</body>
</html>