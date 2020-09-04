<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<c:set var="id" value="${param.user_id }"/>
<c:set var="userpw" value="${param.user_pw }"/>

<sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
 url="jdbc:oracle:thin:@175.203.68.186:orcl" user="groom"
 password="123456"/>

<sql:query var="rs" dataSource="${con }">
	select * from member where id=? and pw=?
	<sql:param>${id }</sql:param>
	<sql:param>${userpw }</sql:param>
</sql:query>

<c:forEach var="data" items="${rs.rows }">
	<c:set var="id" value="${data['id'] }" scope="session"/>
</c:forEach>
<c:if test="${id==null }">
	<script>
	alert("아이디 또는 비밀번호가 올바르지 않습니다.");
	location.herf = "index.jsp?part=member&page=login"; //history.back()
</script>
</c:if>
<script>
	location.href='/groom';
</script>