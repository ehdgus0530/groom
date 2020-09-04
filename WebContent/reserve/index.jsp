<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="part" value="${param.part }" />
<c:set var="pg" value="${param.page }" />
<c:set var="server"
	value="http://${pageContext.request.serverName}:8080/groom" />

<link rel="stylesheet" type="text/css" href="${server}/lib/reserve.css">
<c:if test="${part!=null }">
	<link rel="stylesheet" type="text/css"
		href="${server}/lib/${part }.css">
	<script type="text/javascript" src="${server}/lib/${part }.js"></script>
</c:if>

<body>
	<div id='wrap'>
		<%-- 제목 --%>
		<div id='header'>RESERVE</div>

		<%-- 메뉴바 --%>
		<div id='menu_bar'>
			<jsp:include page="/menu/menubar.jsp" />
		</div>

		<%-- 내용표현 --%>

		<div id='content' style="background: #DBEEF4;">
			<c:choose>
				<c:when test="${part!=null }">
					<c:set var="path" value="${ part}/${ pg}.jsp" />
					<jsp:include page="${path}" />
				</c:when>

				<c:when test="${pg ==null}">
					<c:set var="path" value="./content/empty.jsp" />
					<jsp:include page="${path}" />
				</c:when>

				<c:when test="${pg ==air}">
					<c:set var="path" value="./content/air.jsp" />
					<jsp:include page="${path}" />
				</c:when>

				<c:when test="${pg ==room}">
					<c:set var="path" value="./content/room.jsp" />
					<jsp:include page="${path}">
					<jsp:param value="${pg }" name="pg"/>
					</jsp:include>
				</c:when>

				<c:when test="${pg ==rent}">
					<c:set var="path" value="./content/rent.jsp" />
					<jsp:include page="${path}" >
					<jsp:param value="${pg }" name="pg"/>
					</jsp:include>
				</c:when>
			</c:choose>
		</div>
	</div>