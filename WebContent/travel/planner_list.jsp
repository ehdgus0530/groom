<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/planner_list.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/travel.js"></script>

<div id='wrap'>
	<div id='title'>Planner&nbsp;List</div>
	<div id='middle'>
	
		<div id='note'>
			
		</div>
		<div id='add' onclick="tr_pl()">+</div>
	</div>
		<div id='serch'>
			<input type='text' id='text'> <input type='button' value='검색' id='bt'>
		</div>
		<div id='foot'>1,2,3,4...</div>
</div>