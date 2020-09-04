<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/info.css">

	<div id='wrap'>
		<div id='info_title'>비밀번호 변경</div>
		<div id='home_button'>HOME</div>
		<div id='info_content'>
			<div>
			<table>
			<tr><td>현재 비밀번호<td><input type="text" style="width:100px;">
			<tr><td>새로운 비밀번호<td><input type="text" style="width:100px;">
			<tr><td>비밀번호 확인<td><input type="text" style="width:100px;">
			</table>
			</div>
			<div id='button'>
				<div id='save' onclick='location.href=info'>Save</div>
			</div>
		</div>
	</div>