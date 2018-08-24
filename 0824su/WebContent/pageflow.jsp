<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 흐름</title>
</head>
<body>
	<%
		// 다른 URL로 포워딩 -  현대 도메인 내에서만 이동이 가능
		// 프로젝트 안에 있는 파일의 경로를 설정
		// URL이 변경되지 않습니다.현재페이지의 주소가 계속 있음
		// 새로고침을 하면 register.jsp가 새로고침이 되는 것이 아니고 현재 페이지가 새로고침 됩니다.
		//pageContext.forward("register.jsp"); // url이 안바뀌고 주소만 가지고 왔다.
		
		//리다이렉트 - 외부 도메인으로 이동 가능
		//URL이 변경됩니다.
		//위에 보면 url이 달라진것을 볼수 있다 밑에 주소로 변경됨
		// 새로고침을 하면 register.jsp가 새로고침이 됩니다.
		response.sendRedirect("register.jsp");
	%>
</body>
</html>