<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Msg"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>보낸 쪽지함</title>
</head>
<body>
	<table class="table table-hover"  style="width: 100%; max-width: 100%">
		<tr>
			<th style="width: 15%">보낸사람</th>
			<th style="width: 15%">받은사람</th>
			<th style="width: 50%" >내용</th>
			<th style="width: 20%">날짜</th>
		</tr>
		<c:forEach var="msg" items="${sendMsgs}" varStatus="status">
			<tr>
				<td><c:out value="${msg.sender}" /></td>
				<td><c:out value="${msg.receiver}" /></td>
				<td style="text-align: left;"><c:out value="${msg.msgContent}" /></td>
				<td><c:set value="${msg.writeDate}" var="writeDate" /> <fmt:formatDate
						value="${writeDate }" type="date" dateStyle="short" />&nbsp;&nbsp;
					<fmt:formatDate value="${writeDate }" type="time" dateStyle="short" />
				</td>
			</tr>

		</c:forEach>
	</table>

<br>
<br>
<br>
<br>

<hr>
<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
