<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Breply"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 댓글수정</title>
</head>
<body>

<h2>댓글수정</h2>

<c:url value="/breply/update" var="action"/>
<form:form modelAttribute="breply" method="post" action="${action }">a

<label>게시판번호</label> : <form:input path="boardNo"/><br>
<label>댓글번호</label> : <form:input path="breplyNo"/><br>
<label>사용자ID</label> : <form:input path="userId"/><br>
<label>댓글내용</label> : <form:input path="breplyContent"/><br>
<br>

<button type="submit" name="_event_confirmed">수정완료</button>

</form:form>

</body>
</html>