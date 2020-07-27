<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/chap16"%>

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
	<h1>태그 body scriptless</h1>
	<my:tagEx1body>
		<p>Hello World 1</p>
		${pageContext.request.contextPath}
		
		<!-- 액션태그 사용하기 -->
		<jsp:include page="includeEx3.jsp"></jsp:include>

		<%--스크릿트릿, expression, declaration 은 쓸 수 없다.
		<%
			Object o = new Object();
				out.print(o);
		%>
		<%=o%>
		<%!int i = 0;%>
		
		 --%>
	</my:tagEx1body>

	<h1>태그 body tagdependent</h1>
	<my:tagEx2body>
		<p>Hello World 2</p>
		${pageContext.request.contextPath}
		
		<!-- tagdependent에선 실행되지 않음 -->
		<jsp:include page="includeEx3.jsp"></jsp:include>
	</my:tagEx2body>
</body>
</html>