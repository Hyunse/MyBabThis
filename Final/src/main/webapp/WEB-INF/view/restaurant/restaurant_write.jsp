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
    
	window.open("<%=request.getContextPath()%>/upload/res","_blank", "width = 600 height = 300")

	})
})
</script>
<body>

<c:url value="/restaurant/writed" var="action"></c:url>
	<form:form modelAttribute="restaurant" method="post" action="${action}">
		<!-- 나중에 세션으로처리 -->
		<label>작성자</label> : <form:input path="userId" value="${loginUser.userId }" readonly="true"/>
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
		<label>이미지</label> :<div id="dropimg"></div> <form:input path="resImg" id="resImg"/>
		<input type="button" value="upload" id="upload">
		<br>
		<br>
	<button type="submit" name="proceed">입력</button>
	</form:form>
	


</body>
</html>