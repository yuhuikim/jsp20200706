<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!--el을 쓸 수 있다. -->

<c:forEach begin="1" end="5">

	<!-- doBody에서 실행 시키는 것 -->
	<jsp:doBody />

</c:forEach>

