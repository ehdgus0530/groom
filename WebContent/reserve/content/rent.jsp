<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/rent.css">

<div id='rent1'>
	<!-- <form method='get' id='rent_res' action='../reserve.tr'>
			<input type='hidden' name='kind' value='reserve_rent'> -->
	<table>
		<tr>
			<td colspan=3>대여 장소</td>
			<td colspan=5><input type="search" style="width: 500px;"></td>
		</tr>
		<tr>
			<td colspan=2>반납 장소</td>
			<td colspan=2><input type="checkbox">반납 장소 동일</td>
			<td colspan=2><input type="checkbox">반납 장소 선택</td>
			<td colspan=2><select>
					<option>도시선택</option>
					<option>서울</option>
					<option>광주</option>
					<option>대전</option>
			</select></td>
		</tr>

		<tr>
			<td>대여 시작</td>
			<td colspan=3><input type="datetime-local" style="width: 200px;"></td>
			<td>반납 완료</td>
			<td colspan=3><input type="datetime-local" style="width: 200px;"></td>
		</tr>
		<tr>
			<td colspan=3>차량 대수</td>
			<td colspan=5><input type="number" style="width: 500px;">대</td>
		</tr>
		<tr>
			<td colspan=3>운전자 연령</td>
			<td colspan=5><input type="number" style="width: 500px;">세
				이상</td>
		</tr>
	</table>
			<!-- </form> -->
</div>
<div id='button'>
	<span> <a
		href="http://localhost:8080/groom/reserve/index.jsp?part=content&page=${param.page}_res">&nbsp;검&nbsp;색&nbsp;</a>
	</span>
</div>