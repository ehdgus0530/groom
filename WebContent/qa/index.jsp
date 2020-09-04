<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/qa.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/qa.js"></script>

	<div id='wrap'>
		<div id='title'>문&nbsp;의&nbsp;내&nbsp;역</div>
		<button id='home' onclick='location.href="../"'>HOME</button>
		<div id='middle'>
			<table id='middle_t'>
				<tr id='note'>
					<th id='n1'>제목</th>
					<th id='n2'>글쓴이</th>
					<th id='n3'>작성일자</th>
				</tr>
				<c:forEach var="data" items="${list }">
					<c:if test="${sessionScope.id == data.qa_writer}"> 
						<tr id='tt'>
							<td id='t1'><a href='qa.do?kind=view&num=${data.num }'>${data.qa_title }</a></td>
							<td id='t2'>${data.qa_writer }</td>
							<td id='t3'>${data.qa_date }</td>
						</tr>
					</c:if>
				</c:forEach>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<button onclick='qa_write()' id='qa_write'>글쓰기</button>
			
			<div id='nextp'>1&nbsp;2&nbsp;3&nbsp;4&nbsp; ... [끝 페이지]</div>
		</div>
		<div id='foot'></div>
	</div>