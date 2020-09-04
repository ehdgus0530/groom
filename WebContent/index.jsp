<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<c:set var="part" value="${part }" />
<c:set var="pg" value="${page }" />
<c:set var="server"
	value="http://${pageContext.request.serverName}:8080/groom" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Grooming</title>

<link rel="stylesheet" type="text/css" href="http://<%=request.getServerName() %>:8080/groom/lib/main.css">
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/main.js"></script>

</head>
<body>
	<div class='fullscreen'>
		<div id=header>
			<jsp:include page="/head/member.jsp"/>
		</div>
		<div id=M_planner onclick='user_ck("${sessionScope.id}")'
		onMouseOver='plan_on()' onMouseOut='plan_out()'>
			Planner
		</div>
		<div id=M_title>삶을 꾸며가는 Grooming에 오신것을 환영합니다</div>
		<div id=M_travel onclick='user_tk("${sessionScope.id}")'
		onMouseOver='travel_on()' onMouseOut='travel_out()'>
			Travel
		</div>
	</div>
</body>
</html>