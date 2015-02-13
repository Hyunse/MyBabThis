<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
$(document).ready(function() {
	$("#upload").click(function(){
    
	window.open("<%=request.getContextPath()%>/upload/gomyres","_blank", "width = 600 height = 300")

	})
})
</script>
<body>
	<c:url value="/restaurant/list" var="loc" />
	<a href="${loc }">전체보기</a>
	<c:url value="/restaurant/list?locName=건대" var="loc" />
	<a href="${loc }">건대</a>
	<c:url value="/restaurant/list?locName=강남" var="loc" />
	<a href="${loc }">강남</a>
	<c:url value="/restaurant/list?locName=송파" var="loc" />
	<a href="${loc }">송파</a>
	<c:url value="/restaurant/list?locName=대학로" var="loc" />
	<a href="${loc }">대학로</a>
	<c:url value="/restaurant/list?locName=신림" var="loc" />
	<a href="${loc }">신림</a>
	<c:url value="/restaurant/list?locName=홍대" var="loc" />
	<a href="${loc }">홍대</a>
	<c:url value="/restaurant/list?locName=신촌" var="loc" />
	<a href="${loc }">신촌</a>
	<c:url value="/restaurant/list?locName=종로" var="loc" />
	<a href="${loc }">종로</a>
	<c:url value="/restaurant/list?locName=영등포" var="loc" />
	<a href="${loc }">영등포</a>

	<button id="opener">글쓰기</button>

	<div id="dialog" title="맛집페이지 작성">
		<c:url value="/restaurant/writed" var="action"></c:url>
		<form:form modelAttribute="restaurant" method="post"
			action="${action}">
			<!-- 나중에 세션으로처리 -->
			<label>작성자</label> : <form:input path="userId"
				value="${loginUser.userId }" readonly="true" />
			<br>
			<label>지역</label> : <form:select path="locName">
				<form:option value="건대">건대</form:option>
				<form:option value="강남">강남</form:option>
				<form:option value="송파">송파</form:option>
				<form:option value="대학로">대학로</form:option>
				<form:option value="신림">신림</form:option>
				<form:option value="홍대">홍대</form:option>
				<form:option value="신촌">신촌</form:option>
				<form:option value="종로">종로</form:option>
				<form:option value="영등포">영등포</form:option>
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
			<label>이미지</label> :<img id="dropimg" width="100" height="100" >
			<form:input path="resImg" id="resImg" />
			<input type="button" value="upload" id="upload">
			<br>
			<br>
			<button type="submit" name="proceed">입력</button>
		</form:form>

	</div>



</body>
</html>