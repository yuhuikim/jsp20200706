<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- attribute 추가하기 -->
<%@ attribute name="count"%>
<!-- required 기본값은 false이고 값을 안 넣어도 문제가 되지 않는다. true이면 그 반대 -->
<%@ attribute name="name" required="true"%>
<%@ attribute name="address" type="java.lang.String"%>
<%@ attribute name="member" type="chap11.Member"%>

<h3>tag 5</h3>
<h4>count: ${count }</h4>
<h4>name: ${name }</h4>
<h4>member name : ${member.name}</h4>



