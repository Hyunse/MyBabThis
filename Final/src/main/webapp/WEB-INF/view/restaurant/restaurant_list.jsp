<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<hr>
	<h2>맛집 리스트</h2>
	<%-- <c:url value="/restaurant/write?userId=${loginUser.userId }" var="url"/>
<a href ="${url }"><button>글쓰기</button></a> --%>
	<button id="opener">글쓰기</button>
	<br>
	<jsp:include page="/WEB-INF/view/restaurant/restaurant_loc.jsp" />
	<hr>
	<c:forEach items="${restaurants }" var="restaurant">
		<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url" />
		<table border="1" onclick="location.href='${url}'"
			style="cursor: pointer;">
			<tr>
				<th>맛집 번호</th>
				<th>맛집지역</th>
				<th>맛집 이름</th>
				<th>맛집내용</th>
				<th>왜안나와?</th>
			<tr>
				<td><c:out value="${restaurant.resNo}" /></td>
				<td><c:out value="${restaurant.locName}" /></td>
				<td><c:out value="${restaurant.resName}" /></td>
				<td><c:out value="${restaurant.resContent}" /></td>
				<td></td>
			</tr>
		</table>
		<br>
	</c:forEach>




	<div id="dialog" title="맛집페이지 작성">
		<c:url value="/restaurant/writed" var="action"></c:url>
		<form:form modelAttribute="restaurant" method="post"
			action="${action}">
			<!-- 나중에 세션으로처리 -->
			<label>작성자</label> : <form:input path="userId"
				value="${loginUser.userId }" readonly="true" />
			<br>
			<label>지역</label> : <form:select path="locName">
				<form:option value="강남">강남</form:option>
				<form:option value="건대">건대</form:option>
			</form:select>
			<br>
			<!-- 이런식으로 리스트 불러올수있음 -->
			<%-- <form:option items="${types} }" itemLabel="name" itemValue="id"/> --%>
			<label>맛집장르</label> : <form:select path="resKind">
				<form:option value="한식">한식</form:option>
				<form:option value="중식">중식</form:option>
				<form:option value="양식">양식</form:option>
				<form:option value="일식">일식</form:option>
				<form:option value="분식">분식</form:option>
				<form:option value="기타">기타</form:option>
			</form:select>
			<br>
			<label>업체명</label> : <form:input path="resName" />
			<br>
			<label>전화번호</label> : <form:input path="resNumber" />
			<br>
			<!-- 어케처리하지 얘는? 가입때 안받지않나? -->
			<label>주소</label> : <form:input path="resLoc" />
			<br>
			<label>내용</label> : <form:textarea path="resContent" />
			<br>
			<label>이미지</label> : <form:input path="resImg" value="Noimage.jpg" />
			<br>
			<br>
			<button type="submit" name="proceed">입력</button>
		</form:form>

	</div>

</body>

</html>
