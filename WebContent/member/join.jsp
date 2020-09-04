<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/join.css">
<script type="text/javascript"
	src="http://<%=request.getServerName()%>:8080/groom/lib/member.js"></script>
<div id='wrap'>
	<div id='title'>회원가입</div>
	<form id='joinf' method='post' action='join.do'>
		<div id='middle'>
			<input type='hidden' name='kind' value='join_save'>
			<fieldset>
				<legend>필수입력</legend>
				<table>
				<tr><td>이름<td><input type='text' id='user_name' name='user_name'>
				<tr><td>닉네임<td><input type='text' id='user_nick' name='user_nick'>
				<tr><td>생년월일<td><input type='date' id='user_birth' name='user_birth'>
				<tr><td>아이디<td><input type='text' id='user_id' name='user_id'>
				<tr><td>비밀번호<td><input type='password' id='user_pw' name='user_pw'>
				<tr><td>연락처<td><input type='number' id='user_phone' name='user_phone'>
				<tr><td>이메일<td><input type='email' id='user_email'	name='user_email'>
				</table>
			</fieldset>
		</div>

		<div id='cnt_button'>
			<button type='button' onclick='join()'>회원가입</button>
			<button type='button' onclick='cancel()'>가입취소</button>
		</div>
	</form>

</div>
