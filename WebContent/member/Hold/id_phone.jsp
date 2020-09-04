<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/config.css'>

	<div class='sub_title'>
		휴대전화로 인증 합니다.
		<table>
			<tr>
				<td>이름
				<td><input type="text">
			<tr>
				<td>휴대폰 번호
				<td><input type="tel">
				<td><button onclick=''>인증번호 받기</button>
			<tr>
				<td>인증번호 입력
				<td><input type="text">
		</table>
	</div>
