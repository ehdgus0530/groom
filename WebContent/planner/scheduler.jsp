<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.planner.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script type="text/javascript"
	src="http://<%=request.getServerName()%>:8080/groom/lib/planner.js"></script>


<style>
#wrap {
	width: 1200px;
	height: auto;
	margin: 0 auto;
}

table {
	border: 1px solid black;
	text-align: center;
}

#d1 {
	width: 200px;
}

#n1 {
	width: 200px;
}

#am {
	float: left;
	margin-left: 175px;
	margin-right: 50px;
	width: 400px;
}

#am table tr td {
	background: lightyellow;
	width: 120px;
	height: 100px;
	border: 1px solid black;
	font-weight: bold;
}

#pm {
	float: left;
	margin-right: 165px;
	width: 400px;
}

#pm table tr td {
	background: lightgrey;
	width: 120px;
	height: 100px;
	border: 1px solid black;
	font-weight: bold;
}
</style>

<div id='wrap'>
	<div id='am'>
		<table>
			<tr>
				<td>시간</td>
				<td>할일</td>
			</tr>
			<tr>
				<td>00~02</td>
				<td onclick='scd_input("00~02")'><div id='d1'>${scd_content.get("00~02") }</div></td>
			</tr>
			<tr>
				<td>02~04</td>
				<td onclick='scd_input("02~04")'><div id='d2'>${scd_content.get("02~04") }</div></td>
			</tr>
			<tr>
				<td>04~06</td>
				<td onclick='scd_input("04~06")'><div id='d3'>${scd_content.get("04~06") }</div></td>
			</tr>
			<tr>
				<td>06~08</td>
				<td onclick='scd_input("06~08")'><div id='d4'>${scd_content.get("06~08") }</div></td>
			</tr>
			<tr>
				<td>08~10</td>
				<td onclick='scd_input("08~10")'><div id='d5'>${scd_content.get("08~10") }</div></td>
			</tr>
			<tr>
				<td>10~12</td>
				<td onclick='scd_input("10~12")'><div id='d6'>${scd_content.get("10~12") }</div></td>
			</tr>
		</table>
	</div>

	<div id='pm'>
		<table>
			<tr>
				<td>시간</td>
				<td>할일</td>
			</tr>
			<tr>
				<td>12~14</td>
				<td onclick='scd_input("12~14")'><div id='n1'>${scd_content.get("12~14") }</div></td>
			</tr>
			<tr>
				<td>14~16</td>
				<td onclick='scd_input("14~16")'><div id='n2'>${scd_content.get("14~16") }</div></td>
			</tr>
			<tr>
				<td>16~18</td>
				<td onclick='scd_input("16~18")'><div id='n3'>${scd_content.get("16~18") }</div></td>
			</tr>
			<tr>
				<td>18~20</td>
				<td onclick='scd_input("18~20")'><div id='n4'>${scd_content.get("18~20") }</div></td>
			</tr>
			<tr>
				<td>20~22</td>
				<td onclick='scd_input("20~22")'><div id='n5'>${scd_content.get("20~22") }</div></td>
			</tr>
			<tr>
				<td>22~00</td>
				<td onclick='scd_input("22~00")'><div id='n6'>${scd_content.get("22~00") }</div></td>
			</tr>
		</table>
	</div>

<div >Back</div>
</div>