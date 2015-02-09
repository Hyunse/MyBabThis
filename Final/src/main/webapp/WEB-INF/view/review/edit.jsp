<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 리뷰수정</title>
</head>
<body>

<h2>리뷰수정</h2>

<c:url value="/review/update" var="action"/>
<form:form modelAttribute="review" method="post" action="${action }">
<!-- 수정불가능 -->
<label>맛집번호</label> : <form:input path="resNo"/><br>
<label>리뷰번호</label> : <form:input path="reviewNo"/><br>
<label>사용자ID</label> : <form:input path="userId"/><br>
<!-- 수정가능 -->
<label>리뷰점수</label> : <form:input path="reviewScore"/><br>
<label>리뷰내용</label> : <form:input path="reviewContent"/><br>
<br>

<button type="submit" name="_event_confirmed">수정완료</button>
<button type="submit" name="_event_reverse">재입력</button>
</form:form>

</body>
</html>