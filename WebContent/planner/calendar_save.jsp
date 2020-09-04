<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName()%>:8080/groom/lib/calendar.css">
	
	<script type="text/javascript">
	
	var fm = document.querySelector('#cal_write');
	fm.submit();
	
	history.back();
	</script>

<div id='wrap'>
	<form method='get' id='cal_write' action='../cal.pl'>
	<input type='hidden' name='kind' value='cal_save'>
	
		<div id='title'>Calendar</div>
		<div id='middle'>
			<input type="month">
		</div>
		<div id='calender'>
			<table>
				<tr>
					<td><input id="cal_input" type='text' name='calcontent'></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		<div id='button'>
			<div class='c1_button'>
				<a href='calendar.jsp'>Save</a>
			</div>
		</div>
	</form>
</div>
