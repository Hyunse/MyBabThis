<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Msg" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>신고함</title>
</head>
<body>
<h2>신고함</h2>
<table border="1">
<c:forEach var= "msg" items="${msgs}" varStatus="status">
		<tr>
		<th>보낸사람</th><th>받은사람</th><th>내용</th><th>전송시각</th><th>게시물분류</th><th>게시판번호</th>
		</tr>
		<tr>
			<td> <c:out value="${msg.sender}"/> </td>
			<td> <c:out value="${msg.receiver}"/> </td>
			<td> <c:out value="${msg.msgContent}"/></td>
			<td> <c:out value="${msg.writeDate}"/></td>
			<td> <c:out value="${msg.writeType}"/></td>
			<td> <c:out value="${msg.warnNo}"/></td>
			
		</tr>
		
		</c:forEach>
</table>


</body>
</html>