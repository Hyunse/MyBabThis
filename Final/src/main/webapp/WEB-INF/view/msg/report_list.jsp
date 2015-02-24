<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Msg" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<br><br>
<table class="table table-hover" style="width: 100%; text-align: center;" >
<tr>
		<th style="width: 10%">보낸사람</th><th style="width: 10%">받은사람</th><th style="width: 50%">내용</th><th style="width: 10%">전송시각</th><th style="width: 10%">게시물분류</th><th style="width: 10%">게시판번호</th>
		</tr>
<c:forEach var= "msg" items="${msgs}" varStatus="status">
		
		<tr>
			<td> <c:out value="${msg.sender}"/> </td>
			<td> <c:out value="${msg.receiver}"/> </td>
			<td> <c:out value="${msg.msgContent}"/></td>
			<td> 
			<c:set value="${msg.writeDate }" var="writeDate"/>
			<fmt:formatDate value="${writeDate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
			<fmt:formatDate value="${writeDate }" type="time" pattern="hh:MM"/>
			</td>
			<td> <c:out value="${msg.writeType}"/></td>
			<td> <c:out value="${msg.warnNo}"/></td>
			
		</tr>
		
		</c:forEach>
</table>


</body>
</html>