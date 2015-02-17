<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				effect : "explode",
				duration : 1000
			}
		});

		$("#opener").click(function() {
			$("#dialog").dialog("open");
		});
	});
</script>

</head>
<body>
<div class="sticky">
	<jsp:include page="/WEB-INF/view/header.jsp" />
</div>
	<hr>
	<h2>맛집 리스트</h2>
	<br>
	<jsp:include page="/WEB-INF/view/restaurant/restaurant_loc.jsp" />
	<hr>
	<c:forEach items="${restaurants }" var="restaurant">
		<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url" />
		<table border="1" onclick="location.href='${url}'"
			style="cursor: pointer;">
			<tr>
				<th>맛집 번호</th>
				<th>맛집 이미지</th>
				<th>맛집지역</th>
				<th>맛집 이름</th>
				<th>맛집내용</th>
				<th>왜안나와?</th>
			<tr>
				<td><c:out value="${restaurant.resNo}" /></td>
				<td><img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" width="100" height="100"></td>
				<td><c:out value="${restaurant.locName}" /></td>
				<td><c:out value="${restaurant.resName}" /></td>
				<td><c:out value="${restaurant.resContent}" /></td>
				<td></td>
			</tr>
		</table>
		<br>
	</c:forEach>

</body>

</html>
