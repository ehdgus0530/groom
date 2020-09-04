<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="http://<%=request.getServerName() %>:8080/groom/lib/menubar.css">

<style>
table {
	margin-bottom: auto;
}

td {
	border: 1px solid black;
	width: 400px;
	height: 50px;
	font-size: 16pt;
}
</style>


	<table id='menubar'>
		<tr>
			<td id='air'><a href="../reserve/index.jsp?part=content&page=air">항공</a></td>
			<td id='hotel'><a href="../reserve/index.jsp?part=content&page=room">숙박</a></td>
			<td id='rent'><a href="../reserve/index.jsp?part=content&page=rent">렌트</a></td>
		</tr>
	</table>

