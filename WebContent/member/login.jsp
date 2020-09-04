<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName() %>:8080/groom/lib/log.css">
<script type="text/javascript"
	src="http://<%=request.getServerName() %>:8080/groom/lib/member.js"></script>

<div id='wrap'>
	<div id='title'>로그인</div>
	<div id='middle'>

		<form id='loginf' method='post' action='login.do'>

			<input type='hidden' name='kind' value='login_ok'> 
			
			<div id='l_input'>
			<span class='title'>아이디 <input type="text" id='user_id' name='user_id'></span><br> 
			<span class='title'>비밀번호 <input type="password" id='user_pw' name='user_pw'></span>
			</div>
			
			<div id='l_button'>
				<input type="button" value="Login" onclick='login()'>
			</div>
			<div id='cnt_button'>
				<input type="button" value="회원 가입" onclick='join_move()'> 
				<input type="button" value="아이디 찾기">
				<input type="button" value="비밀번호 찾기">
			</div>
		</form>
	</div>
</div>
