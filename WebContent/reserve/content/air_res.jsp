<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="http://<%=request.getServerName() %>:8080/groom/lib/air.css">

<div id='a_title'>항공 검색결과</div>
<div id='res_menu'>
	<table class='res'>
		<tr>
			<td colspan=2>출발지<input type="search"></td>
			<td>↔</td>
			<td colspan=2>도착지<input type="search"></td>
			<td colspan=2>출발일자<input type="datetime-local"></td>
			<td>↔</td>
			<td colspan=2>도착일자<input type="datetime-local"></td>
		</tr>
	</table>
</div>
<div id='air_res'>
	<table class='res'>
		<tr>
			<td colspan=10 height=auto>검색결과</td>
		</tr>
	</table>
</div>
<div id='button'>
	<span><a href="../travel.jsp">Travel</a></span> <span><a href="#">Next</a></span>
</div>