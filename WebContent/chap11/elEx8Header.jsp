<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
</head>
<body>
	<!-- <h1>${header}</h1> 헤더 정보의 모든 걸 출력-->
	<h1>${header["HOST"] }</h1> <!-- <h1>${header.host }</h1>와 같음 -->
	<h1>${header["sec-fetch-mode"] }</h1>
	<h1>${headerValues["accept-language"][0] }</h1>
	<h1>${cookie["JSESSIONID"].name},${cookie["JSESSIONID"].value }</h1>
	<h1>${initParam.logEnabled }</h1>
</body>
</html>

