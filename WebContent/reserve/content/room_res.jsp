<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName() %>:8080/groom/lib/room.css">

<div id='h_title'>숙박 검색결과</div>
<body>
	<div id='res_menu'>
		<table>
			<tr>
				<td>장소<br>
				<input type="search"></td>
				<td>체크인<br>
				<input type="date"></td>
				<td>체크아웃<br>
				<input type="date"></td>
				<td><input type="button" value=지도></td>
			</tr>
		</table>
	</div>

	<div id='room_res'>
		<table>
			<tr>
				<td>
					<table>
						<tr>
							<td>사진</td>
							<td colspan=3>숙소명</td>
							<td colspan=3>최저가사이트목록</td>
						</tr>
						<tr>
							<td>별점</td>
							<td colspan=3>숙소 설명</td>
							<td colspan=3><input type="button" value=페이지이동></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div id='button'>
		<span><a href="groom/travel/index.jsp">Travel</a></span> <span><a
			href="#">Next</a></span>
	</div>