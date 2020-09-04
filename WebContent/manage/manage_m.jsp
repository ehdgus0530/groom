<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css'
	href='http://<%=request.getServerName() %>:8080/groom/lib/manage_m.css'>

	<div id='wrap'>
		<div id='title'>회&nbsp;원&nbsp;관&nbsp;리</div>
		<button id='home' onclick='location.href="index.jsp"'>HOME</button>
		<div id='mt'>
			<input type='text' id='serch_m' placeholder="검색할 회원정보  "> <input
				type='button' value='검색' id='serch'>
		</div>
		<div id='middle'>
			<table id='middle_t'>
				<tr id='nn'>
					<th>회원번호</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>비고</th>
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