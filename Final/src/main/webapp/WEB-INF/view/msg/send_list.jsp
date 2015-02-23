<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Msg" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>보낸 쪽지함</title>
</head>
<body>
<h2>보낸 쪽지함</h2>
<table class="table">
<c:forEach var= "msg" items="${sendMsgs}" varStatus="status">
		<tr>
		<th>보낸사람</th><th>받은사람</th><th>내용</th><th>날짜</th>
		</tr>
		<tr>
			<td> <c:out value="${msg.sender}"/> </td>
			<td> <c:out value="${msg.receiver}"/> </td>
			<td> <c:out value="${msg.msgContent}"/></td>
			<td>
			<c:set value="${msg.writeDate}" var="writeDate"/>
			<fmt:formatDate value="${writeDate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
			<fmt:formatDate value="${writeDate }" type="time" pattern="hh:MM"/>
			</td>
		</tr>
		
</c:forEach>
</table>


</body>
</html>
