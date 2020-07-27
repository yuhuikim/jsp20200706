<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ tag dynamic-attributes="optionMap" %>
<%@ attribute name="name" required="true" %>

<select name="${name }" >
	<c:forEach items="${optionMap }" var="option">
		<option value="${option.key }">
			${option.value }
		</option>
	</c:forEach>
</select>


