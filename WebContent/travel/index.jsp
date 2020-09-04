<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/planner.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/travel.js"></script>
<div id='wrap'>
	<div id='title'>T&nbsp;r&nbsp;a&nbsp;v&nbsp;e&nbsp;l</div>
	<div id='middle'>
		<button id='top' onclick='tr_list()'>Travel&nbsp;Planner</button>
		<button id='left' onclick='location.href="../reserve/"'>Reserve</button>
		<button id='right' onclick='location.href=""'>Diary</button>
	</div>
</div>
