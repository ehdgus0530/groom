<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel='stylesheet' type='text/css' href='http://<%=request.getServerName() %>:8080/groom/lib/qa_view.css'>
	<div id='wrap'>
		<div id='title'>문&nbsp;의&nbsp;글</div>
		<div id='middle'>
			<div id='mt'>
				<div id='ct'>${data.qa_cate }</div>
				<div id='tt'>${data.qa_title }</div>
			</div>
			<div id='tn'>${data.qa_content }</div>
			<div id='tag'>덧글 </div>
			<div>
				<input type='button' value='삭제' id='del'
					onclick='location.href="index.jsp"'> <input type='button'
					value='수정' id='save' onclick='location.href="qa_write.jsp"'>

			</div>
		</div>
		<div id='foot'></div>
	</div>