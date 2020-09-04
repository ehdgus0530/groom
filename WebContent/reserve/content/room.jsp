<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/room.css">

<div id='room1'>
	<!-- <form method='get' id='room_res' action='../reserve.tr'>
			<input type='hidden' name='kind' value='reserve_room'> -->
	<table>
		<tr>
			<td colspan=2>지역명</td>
			<td colspan=5><input type="search" style="width: 500px;"></td>
		</tr>
		<tr>
			<td colspan=2>호텔명</td>
			<td colspan=5><input type="search" style="width: 500px;"></td>
		</tr>
		<tr>
			<td colspan=6><div>※ 지역명 또는 호텔명을 입력해주세요. 두 가지 모두 입력할 경우,
					보다 정확한 검색을 이용하실 수 있습니다.</div></td>
		</tr>
		<tr>
			<td>체크인</td>
			<td colspan=2><input type="date" style="width: 300px;"></td>
			<td>체크아웃</td>
			<td colspan=2><input type="date" style="width: 300px;"></td>
		</tr>
		<tr>
			<td colspan=2>객실수</td>
			<td colspan=4><input type="number" style="width: 500px;"></td>
		</tr>
		<tr>
			<td rowspan=2>인원수</td>
			<td>성인</td>
			<td colspan=4><input type="number" style="width: 500px;"></td>
		</tr>
		<tr>
			<td>아동(16세 미만)</td>
			<td colspan=4><input type="number" style="width: 500px;"></td>
		</tr>
		<!-- </form> -->
	</table>
</div>
<div id='button'>
	<span> <a
		href="http://localhost:8080/groom/reserve/index.jsp?part=content&page=${param.page }_res">&nbsp;검&nbsp;색&nbsp;</a>
	</span>
</div>