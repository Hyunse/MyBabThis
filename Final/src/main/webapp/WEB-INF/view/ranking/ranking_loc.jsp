<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
	<h1>맛집 top5</h1>
	<hr>
	<br>
	<c:forEach items="${restaurants }" var="restaurant">
	<table border="1">
		<tr>
			<td><c:out value="${restaurant.locName}" />
			</td>
		</tr>
		<tr>
			<td><c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="loc" />
				<a href="${loc}"><c:out value="${restaurant.resName}" /></a></td>
		</tr>
		<tr>
			<td><c:out value="${restaurant.resScore}"/></td>
		</tr>
	</table>
	</c:forEach>
</body>
</html>