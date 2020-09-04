<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${sessionScope.id !=null}">
<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/bucket.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/planner.js"></script>

	<div id='wrap'>
		<button id='main' onclick='bk_back()'>Back</button>
		<button id='save' onclick='save_bk()'>SAVE</button>
		
		<div id='title'>버킷&nbsp;리스트</div>
		<div id='middle'>
		
			<div id='m1'>
				<div id='m1a'>달성 여부</div>
				<div id='m1b'>내용</div>
			</div>
			<form id='bucketf' method='get' action='plan.pl'>
			<input type='hidden' name='kind' value='bk_save'>
				<input type='text' id='bk_title' name='bk_title'>
				<div>
					<input type="checkbox" id='bk_check' name='bk_check'>
				</div>
				<input type='text' id='bk_content' name='bk_content'>
			</form>
				<div id='bucket_list'>
					<div id='m2a'>
						
					</div>
					<div id='m2b'>
						
					</div>
					<div id='m2c'>
					</div>
				</div>

	</div>
	</div>
</c:if>
<c:if test="${sessionScope ==null }">
	보류
</c:if>