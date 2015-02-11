<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰작성</title>
</head>
<body>


	<h1>리뷰작성</h1>
	<c:url value="/review/write" var="action"></c:url>
	<form:form modelAttribute="review" method="post" action="${action }" >
		<label>맛집번호</label> : <form:input path="resNo" readonly="true"/>
		<br>
		<label>작성자</label> : <form:input path="userId" readonly="true"/>
		<br>
		<label>맛평가</label> : <form:radiobutton path="reviewScore" value="0"/>0
								<form:radiobutton path="reviewScore" value="1"/>1
								<form:radiobutton path="reviewScore" value="2"/>2
								<form:radiobutton path="reviewScore" value="3"/>3
								<form:radiobutton path="reviewScore" value="4"/>4
								<form:radiobutton path="reviewScore" value="5"/>5
		
		<br>
		<label>내용</label> : <form:input path="reviewContent" />
		<br>
		<button type="submit" name="write">작성</button>
	</form:form>
	
	
</body>
</html>