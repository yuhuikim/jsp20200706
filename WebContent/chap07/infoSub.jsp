<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//info.jsp에서 전달한 type 파라미터의 값을 읽어온다.
	String type = request.getParameter("type");
	//type파라미터가 null이면 리턴한다.
	if (type == null) {
		return;
	}
%>

<br>
<table class="table table-bordered">
	<tr>
		<td>타입</td>
		<td><b><%=type%></b></td>
	</tr>
	<tr>
		<td>특징</td>
		<td>
			<%
			
				if (type.equals("A")) {
					//type 파라미터 값이 A이면 출력
					out.print("강한내구성.");
				} else if (type.equals("B")) {
					//type 파라미터 값이 B이면 출력
					out.print("뛰어난 대처 능력");
				}
			%>
		</td>
	</tr>
</table>