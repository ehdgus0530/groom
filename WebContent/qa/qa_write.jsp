<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>

<link rel='stylesheet' type='text/css'
	href='http://<%=request.getServerName() %>:8080/groom/lib/qa_write.css'>
<script type="text/javascript" src="http://<%=request.getServerName() %>:8080/groom/lib/qa.js"></script>


	<div id='wrap'>
		<form id='qaf' method='post' action='qa.do'>
		<input type='hidden' name='kind' value='save'>
			<div id='mt'>
				<select id='qa_cate' name="qa_cate" >
					<option value="">카테고리</option>
					<option value="캘린더">캘린더</option>
					<option value="여행">여행</option>
					<option value="기타">기타</option>
				</select> <input type="text" id='qa_title' name='qa_title' placeholder="제목을 입력하세요. ">
			</div>
			<textarea placeholder="내용을 입력하세요. " id='qa_content' name='qa_content'></textarea>
			<div id='qa_file'>
				<input type='file' name='qa_file'>
			</div>
			<button type='button' id='save' onclick="saves()">저장</button>
		</form>
		<div id='foot'></div>
	</div>