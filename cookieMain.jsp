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
		request 객체를 사용하여 모든 쿠키객체들을 배열로 얻은 후 
		쿠키값이 "hong"인 쿠키가 있다면 웹브라우저에 홍길동님 안녕하세요 출력
	 --%>
	
	<%
		Cookie[] cookies = request.getCookies();
	
		for(int i = 0; i < cookies.length; i++){
			
			String id = cookies[i].getValue();
			
			if(id.equals("hong")){
				
				out.print("<h2>홍길동님 안녕하세요!!</h2>");
				
			}
			
		}
	%>
	
	<hr>
	
	<a href="cookieLogout.jsp">로그 아웃</a>
	
</body>
</html>