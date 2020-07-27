<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag pageEncoding="utf-8"%>

<!-- 출력할 때 위아래 공백이 생길 수도 있는데... -->
<%@ tag trimDirectiveWhitespaces="true"%>

<%@ attribute name="count" required="true" type="java.lang.Integer"%>

<c:forEach begin="${1}" end="${count}">
<jsp:doBody/>
</c:forEach>



