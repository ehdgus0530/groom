<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/air.css">

<script type="text/javascript">
	function submit_air() {
		
		
		var fm = document.querySelector('#air_res');
		fm.submit();
		
		location.href="http://localhost:8080/groom/reserve/index.jsp?part=content&page=${pg }_res"
	}
</script>

<body>
	<div id='air1'>
		<form method='get' id='air_res' action='../reserve.tr'>
			<input type='hidden' name='kind' value='reserve_air'>
			<table>
				<tr>
					<td colspan=4><input type="checkbox">왕복 <input
						type="checkbox">편도 <input type="checkbox">다구간</td>
					<td colspan=4><span> <input type="checkbox">직항
							<input type="checkbox">경유
					</span> (동시선택 가능)</td>


				</tr>

				<tr>
					<td>출발지</td>
					<td colspan=3><select>
							<option>출발지를 입력하세요 (국가)</option>
							<option>대한민국</option>
							<option>미국</option>
							<option>태국</option>
					</select></td>

					<td colspan=3><select>
							<option>출발지를 입력하세요 (도시)</option>
							<option>서울</option>
							<option>LA</option>
							<option>치앙마이</option>
					</select></td>
					<td rowspan=2 width=50px>↕</td>
				</tr>

				<tr>
					<td>도착지</td>
					<td colspan=3><select>
							<option>도착지를 입력하세요 (국가)</option>
							<option>대한민국</option>
							<option>미국</option>
							<option>태국</option>
					</select></td>

					<td colspan=3><select>
							<option>도착지를 입력하세요 (도시)</option>
							<option>서울</option>
							<option>LA</option>
							<option>치앙마이</option>
					</select></td>

				</tr>

				<tr>
					<td>출발일자</td>
					<td colspan=2><input type="date" id="start_time"
						style="width: 300px;"></td>
					<td colspan=2>~</td>
					<td>도착일자</td>
					<td colspan=2><input type="date" id="finish_time"
						style="width: 300px;"></td>
				</tr>

				<tr>
					<td rowspan=2>인원수</td>
					<td colspan=2>성인</td>
					<td colspan=5><input type="number" style="width: 500px;"></td>
				</tr>

				<tr>
					<td colspan=2>아동(16세 미만)</td>
					<td colspan=5><input type="number" style="width: 500px;"></td>
				</tr>
			</table>

		</form>
	</div>

	<div id='button'>
		<span onclick='submit_air'>&nbsp;검&nbsp;색&nbsp;</span>

	</div>