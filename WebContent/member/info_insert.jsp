<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/info.css">

	<div id='wrap'>
		<div id='info_title'>기본 정보 수정</div>
		<div id='home_button'>HOME</div>
		<div id='info_content'>
			<table>
				<tr>
					<td>이름
					<td colspan=5>홍길동
				</tr>
				<tr>
					<td>닉네임
					<td colspan=5><input type="text" style="width:100px;"><button style="margin-left:80px;">중복확인</button>
				</tr>
				<tr>
					<td>아이디
					<td colspan=5>hellojava
				</tr>
				<tr>
					<td>휴대폰번호
					<td style="width:100px;"><select><option>010</option>
							<option>011</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>019</option></select>
					<td colspan=3 style="width:100px;"><input type="text" style="width:100px; margin-right:10px;"><input type="text" style="width:100px">
					
				</tr>
				<tr>
					<td>이메일 주소
					<td colspan=2><input type="text" style="width:100px;">
					<td style="width:50px;">@
					<td colspan=2><select><option>nave.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>byte.com</option>
							<option>직접입력</option></select>
				</tr>
			</table>

			<div id='button'>
				<div id='save' onclick='location.href=info'>Save</div>
				<div id='back' onclick='location.href=pw_insert'>Back</div>
			</div>
		</div>
	</div>
