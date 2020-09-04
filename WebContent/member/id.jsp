
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/config.css'>

	<div id='wrap'>
		<div class='title'>아이디 찾기</div>
		<div class='id_box'>
			<input type="checkbox">본인 명의 휴대전화 번호로 찾기 <br> <input
				type="checkbox">등록한 이메일로 찾기
		</div>
		<div class='id_input'>
			<%-- <jsp:include page=""></jsp:include> --%>
			<!-- 아이디 찾기 : 이멜 / 휴대폰 인클루드 -->
		</div>
		<div class='button_box'>
			<div class='button'>Enter</div>
			<div class='button'>Back</div>
		</div>
	</div>
