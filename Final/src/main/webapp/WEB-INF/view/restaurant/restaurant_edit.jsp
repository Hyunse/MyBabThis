<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="mybabthis.entity.Restaurant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:url value="/restaurant/edited" var="action"></c:url>
	<form:form modelAttribute="restaurant" method="post" action="${action}">
	<label>업체명</label> : <form:input path="resName" value="${restaurant.resName }"/>
		<br>
		<label>업체번호</label> : <form:input path="resNumber" value="${restaurant.resNumber}" />
		<br>
		<label>주소</label> : <form:input path="resLoc" value="${restaurant.resLoc}"/>
		<br>
		<label>내용</label> : <form:input path="resContent" value="${restaurant.resContent}"/>
		<br>
		
		<label>이미지</label> : <form:input path="resImg" value="${restaurant.resImg}"/>
		<br>
		<label>지역</label> : <form:select path="locName" value="${restaurant.locName}">
		<form:option value="강남">강남</form:option>
		<form:option value="건대">건대</form:option>
				
		</form:select>
		<br>
		<label>맛집장르</label> : <form:select path="resKind" value="${restaurant.resKind}">
		<form:option value="한식">한식</form:option>
		<form:option value="중식">중식</form:option>
		<form:option value="양식">양식</form:option>
		<form:option value="일식">일식</form:option>
		<form:option value="분식">분식</form:option>
		<form:option value="기타">기타</form:option>
		
		</form:select>
		
		<br>
	
	
	<button type="submit" name="proceed">입력</button>
	</form:form>


</body>
</html>