<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:if test="${sessionScope.id !=null}">
<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/planner_main.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/planner.js"></script>

	<div id='wrap'>
		<div id='title'>캘&nbsp;린&nbsp;더</div>
		<button id='home' onclick='home()'>HOME</button>
			<div id='middle'>
				<div id='m1'>
					<button id='m1a' onclick='bucket()'>버킷리스트</button> 

						<div id='m1b'>
							${list1.get(0).bk_title }<br>
							${list1.get(1).bk_title }<br>
							${list1.get(2).bk_title }
						</div>
						<div id='m1c'>제목에 대한 요약

						</div>

				</div>
				<div id='m2'>
					<div id='m2a'>d-day 카운터
						
					</div>
					<div id='m2b'>가까운 제목
						
					</div>
					<div id='m2c'>d-day
						
					</div>
				</div>
				<div id='m3'>
					<button id='m3a' onclick='calendar()'>Calendar</button>
				</div>
				<div id='m4'>
					<button id='m4a' onclick='scheduler()'>Scheduler</button>
					<div id='m4b'>
						<div class='m4bb'>1
							
						</div>
						<div class='m4bb'>2
							
						</div>
						<div class='m4bb'>3
							
						</div>
						<div id='m4bbb'>4
							
						</div>
					</div>
				</div>
			</div>
	</div>
		<div id='foot'></div>
</c:if>
<c:if test="${sessionScope ==null }">
</c:if>