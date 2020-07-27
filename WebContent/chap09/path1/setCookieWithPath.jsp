<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

<%
	Cookie cookie1 = new Cookie("Path1", URLEncoder.encode("경로:/chap09/path1", "utf-8"));
	cookie1.setPath("/myjsp1/chap09/path1");
	response.addCookie(cookie1);

	Cookie cookie2 = new Cookie("Path2", URLEncoder.encode("경로:", "utf-8"));
	response.addCookie(cookie2); //경로 설정 안한 것

	Cookie cookie3 = new Cookie("Path3", URLEncoder.encode("경로:", "utf-8"));
	cookie1.setPath("/"); //localhost 다음
	response.addCookie(cookie3);

	Cookie cookie4 = new Cookie("Path4", URLEncoder.encode("경로:/chap09/path2", "utf-8"));
	cookie1.setPath("/myjsp1/chap09/path2");
	response.addCookie(cookie4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>쿠키 경로 지정</title>
</head>
<body>

	다음과 같이 쿠키를 생성했습니다.
	<br>
	<%=cookie1.getName()%>=<%=cookie1.getValue()%>
	[<%=cookie1.getPath()%>]
	<br>
	<%=cookie2.getName()%>=<%=cookie2.getValue()%>
	[<%=cookie2.getPath()%>]
	<br>
	<%=cookie3.getName()%>=<%=cookie3.getValue()%>
	[<%=cookie3.getPath()%>]
	<br>
	<%=cookie4.getName()%>=<%=cookie4.getValue()%>
	[<%=cookie4.getPath()%>]

</body>
</html>