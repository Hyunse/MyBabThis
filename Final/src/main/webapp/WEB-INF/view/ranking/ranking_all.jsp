<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<h1>맛집 랭킹</h1>
	<br>
	<jsp:include page="/WEB-INF/view/ranking/ranking_header.jsp" />


<%int i=1; %>
	<table border="1" >
		<tr>
			<th>순위</th>
			<th>맛집 번호</th>
			<th>맛집지역</th>
			<th>맛집 이름</th>
			<th>맛집내용</th>
			<th>맛집 평점</th>
		</tr>
		<c:forEach items="${restaurants }" var="restaurant">
		<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url" />
		
		<tr onclick="location.href='${url}'" style="cursor: pointer;">
			<td><c:out value="<%=i %>" /></td>
			<td><c:out value="${restaurant.resNo}" /></td>
			<td><c:out value="${restaurant.locName}" /></td>
			<td><c:out value="${restaurant.resName}" /></td>
			<td><c:out value="${restaurant.resContent}" /></td>
				<td><c:out value="${restaurant.resScore}" /></td>
			</tr>
			<%i++; %>
		</c:forEach>
	</table>
	<br>
	<br>

</body>
</html>