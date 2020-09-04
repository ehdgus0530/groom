<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css'
	href='http://<%=request.getServerName() %>:8080/groom/lib/manage_main.css'>

	<div id='wrap'>
		<div id='title'>관&nbsp;리&nbsp;&nbsp;페&nbsp;이&nbsp;지</div>
		<div id='middle'>
			<button id='left' onclick='location.href="manage_m.jsp"'>회원관리</button>
			<button id='right' onclick='location.href="manage_q.jsp"'>문의관리</button>
		</div>
	</div>