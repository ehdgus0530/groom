<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="http://<%=request.getServerName() %>:8080/groom/lib/calender.css">

<style>
table {
	border: 1px solid black;
}

table tr td {
	width: 163px;
	height: 100px;
	border: 1px solid black;
}
</style>


	<div id='c_wrap'>
		<div id=c_header>Calender</div>
		<div id=c_title>
			<input type="month">
		</div>
		<div id=calender>
			<table>
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
		<div id=cs_button>
			<div>
				<a href='calender.jsp'>Save</a>
			</div>
		</div>
	</div>
