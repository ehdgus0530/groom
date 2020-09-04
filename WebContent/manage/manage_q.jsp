<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css'
	href='http://http://<%=request.getServerName() %>:8080/groom/lib/manage_m.css'>

	<div id='wrap'>
		<div id='title'>문&nbsp;의&nbsp;관&nbsp;리</div>
		<button id='home' onclick='location.href="index.jsp"'>HOME</button>
		<div id='mt'>
			<input type='text' id='serch_m' placeholder="검색할 회원정보  "> <input
				type='button' value='검색' id='serch'>
		</div>
		<div id='middle'>
			<table id='middle_t'>
				<tr id='nn'>
					<th id='n1'>날짜</th>
					<th id='n2'>이름</th>
					<th id='n3'>카테고리</th>
					<th id='n4'>제목</th>
					<th id='n5'>비고</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<div id='foot'></div>
	</div>