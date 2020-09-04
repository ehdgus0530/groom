<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/info.css">

	<div id='wrap'>
		<div id='info_title'>회원 정보</div>
		<div id='home_button'><a href="./index.jsp">HOME</a></div>
		<div id='info_content'>
			<table>
				<tr>
					<td>이름
					<td colspan=5>홍길동
				</tr>
				<tr>
					<td>닉네임
					<td colspan=5>헬로자바
				</tr>
				<tr>
					<td>아이디
					<td colspan=5>hellojava
				</tr>
				<tr>
					<td>휴대폰번호
					<td style="width:100px;">010
					<td colspan=3 style="width:100px;">2423 1211
					
				</tr>
				<tr>
					<td>이메일 주소
					<td colspan=2>hellojava
					<td style="width:50px;">@
					<td colspan=2>byte.com
				</tr>
			</table>

			<div id='button'>
				<div id='base_insert'><a href="/member/info_insert.jsp">기본정보수정</a></div>
				<div id='pw_insert'><a href="/member/pw_insert.jsp">비밀번호변경</a></div>
			</div>
		</div>
	</div>
