<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="id" value="${sessionScope.id }"/>
<c:set var="admin" value="${sessinScope.admin }"/>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/main.js"></script>

<style>
.menu a{
    text-decoration: none;
    color: black;
    font-size:25px;
}

.menu a:hover {
	color:red;
	font-weight:bold;
	font-size:28px;
}

</style>
<div class="menu">
	<c:choose>
		<c:when test="${id==null }">
			<a href='login.do?kind=login'>Login</a> 
			<a href='join.do?kind=join'>회원가입</a>
		</c:when>
		<c:when test="${id==admin }">
			<a href='login.do?kind=logout'>Logout</a>
			<a href='#'>관리자 페이지</a>
		</c:when> 
		<c:otherwise>
			<a href='login.do?kind=logout'>Logout</a>
			<a href='mypage.do?kind=mypage'>My Page</a>
			<a href='qa.do'>문의 내역</a>
		</c:otherwise>
	</c:choose>
</div>