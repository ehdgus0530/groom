<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<form method='get' action='qa.do'>
<input type='hidden' name='kind' value='qaok'>
<table>
	<tr>
		<td width=80>작성자</td>
		<td><input type='text' value='' name='qa_write' readonly></td>
	</tr>
	<tr>
		<td width=80>제목</td>
		<td><input type='text' value='' name='qa_title'></td>
	</tr>
	<tr>
		<td colspan='2'>
			<textarea rows=30 cols=60>
			
			</textarea>
		</td>
	</tr>
</table>
<button>글 수정</button>
</form>