<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 전송</title>
</head>
<body>
	<a href="parameterrecive.jsp?name=gil&age=20">파라미터 전송</a>
	
	<form action = "formrecive.jsp" method = "get">
		이메일<input type = "email" name="email" /><br />
		<fieldset>
			<legend>성별</legend>
			<input type = "radio" value = "woman"
			checked ="checked" name = "gender"/>여자
			<input type = "radio" value = "man" name = "gender"/>남자
		</fieldset>
		<fieldset>
			<legend>취미</legend>
			<input type = "checkbox" name = "hobby" value = "game"/>게임
			<input type = "checkbox" name = "hobby" value = "scoccer"/>축구
			<input type = "checkbox" name = "hobby" value = "basketball"/>농구
			<input type = "checkbox" name = "hobby" value = "badminton"/>배드민턴
		</fieldset>
		
		<br /><input type = "submit" value = "전송" />
	
	</form>
	
</body>
</html>