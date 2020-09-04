<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/travel_planner.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/travel.js"></script>


<div id='wrap'>
	<div id='title'>Travel&nbsp;Planner</div>
	
	<form id='travelf' method='get' action='travel.tr'>
	<input type='hidden' name='kind' value='tr_save'>
	<div id='middle'>
		<input type='text' id='mt'>
		<div id='tag'>
			장소<br> 여행 기간<br> 예산<br> 예약&nbsp;목록<br>
		</div>
		<div id='list'>
			<input type='text' name='tr_area'><br> <input type='text' name='tr_date'><br>
			<input type='text' name='tr_money'><br>
			<table>
				<tr>
					<td id='t1'>항공</td>
					<td id='t2'>예약한 항공</td>
				</tr>
				<tr>
					<td id='t3'>숙박</td>
					<td id='t4'>예약한 숙박</td>
				</tr>
				<tr>
					<td id='t5'>렌트</td>
					<td id='t6'>예약한 렌트</td>
				</tr>
			</table>
			<button onclick=''>일정확인</button>
			<button onclick='tr_save()'>save</button>
		</div>
	
		<div id='foot'></div>
	</div>
	</form>
</div>