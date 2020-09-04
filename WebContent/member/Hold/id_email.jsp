<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/config.css'>

	<div class='sub_title'>
		이메일로 인증합니다.
		<table>
			<tr>
				<td>이름
				<td><input type="text">
			<tr>
				<td>이메일 주소
				<td><input type="tel">
				<td><button onclick=''>인증번호 받기</button>
			<tr>
				<td>인증번호 입력
				<td><input type="text">
		</table>
	</div>