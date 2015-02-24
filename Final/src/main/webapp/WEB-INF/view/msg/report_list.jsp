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
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/admin/admin_menu.jsp" />
<body>
<table class="table table-hover" style="width: 100%;">
<tr>
		<th>보낸사람</th><th>받은사람</th><th>내용</th><th>전송시각</th><th>게시물분류</th><th>게시판번호</th>
		</tr>
<c:forEach var= "msg" items="${msgs}" varStatus="status">
		
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