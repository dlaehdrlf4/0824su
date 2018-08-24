<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<%
		//문자열을 파일에 기록
		//접속한 아이피 주소가져오기
		String ip = request.getRemoteAddr();
		//현재 날짜 시간 알아오기
		Date date = new Date();
		
		Calendar cal = new GregorianCalendar();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DATE);
		String filename = year + "" + month + "" + day + ".txt";
		// 기록할 파일 스트림 객체 만들기 new FileOutStream("/Users/a503-25/Documents // 파일경로)",true (true,false)))
		PrintWriter pw = new PrintWriter(new FileOutputStream("/Users/a503-25/Documents/"+filename,true));
		pw.println(ip + "-" + date + "\n");
		pw.flush();
		pw.close();
	%>


	
	<%
		//web.xml파일에 설정한 초기화 파라미터 읽기
		String dbname = application.getInitParameter("dbname");
		//읽은 내용을 화면에 출력
		out.println("읽어온 파라미터:" + dbname + "<br />");
	%>



	<h2 align = "center">회원가입</h2>
	<form action ="loginrecive.jsp" method="post">
	<table align = "center" cellspacing = "10" border = "1">
	<tr>
		<td width = "100" align = center>이메일</td>
		<td width = "200">
		<input type = "email" name = "email" size = "30" />
		</tr>
		<tr>
		<td width = "100" align = center>비밀번호</td>
		<td width = "200">
		 <input type = "password" name = "password" size = "30"/>
		 </tr>
		 <tr>
		<td width = "100" align = center>비밀번호확인</td>
		<td width = "200">
		 <input type = "password" size = "30"/>
		 </tr>
		 <tr>
		<td width = "100" align = center>닉네임</td>
		<td width = "200">
		 <input type = "text" name = "nickname" size = "30"/>
		 </tr>
		 <tr>
		<td width = "100" align = center>전화번호</td>
		<td width = "200">
		<input type = "tel" name = "phone" size = "30"/>
		</tr>
		<tr>
		<td width = "100" align = center>주소</td>
		<td width = "200">
		<textarea cols = "40" rows="10" name = "address"></textarea>
		</tr>
		<tr>
		<td colspan = "3" align = "center">
		 <input type = "submit" value = "회원가입"/>
		 <input type = "reset"  value = "작성취소"/>
		 </td>
		</tr>  
		</table>
	</form>
</body>
</html>