<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- page나 session, request, application중의 하나로 scope를 정할 수 있다. -->
<jsp:doBody var="body" />
<h1>body 출력 전</h1>
${body}

<!-- element 후에 출력되지 않고 그 전에 출력되게 한다. -->


