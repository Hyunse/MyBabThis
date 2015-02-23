<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="mybabthis.entity.Msg" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>받은 쪽지함</title>
</head>
<body>
<h2>받은 쪽지함</h2>
<table border="1">
<c:forEach var= "msg" items="${receiveMsgs}" varStatus="status">
		<tr>
		<th>보낸사람</th><th>받은사람</th><th>내용</th><th>날짜</th>
		</tr>
		<tr>
			<td> <c:out value="${msg.sender}"/> </td>
			<td> <c:out value="${msg.receiver}"/> </td>
			<td> <c:out value="${msg.msgContent}"/></td>
			<td> 
			<c:set value="${msg.writeDate }" var="writeDate"/>
			<fmt:formatDate value="${writeDate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
			<fmt:formatDate value="${writeDate }" type="time" pattern="hh:MM"/>
			</td>
			<td>
		<a href="<%=request.getContextPath()%>/msg/send?receiver=${msg.sender}">
		<button>답장하기</button>
		</a>
		</td>
		</tr>
</c:forEach>
</table>


</body>
</html>