<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글작성</title>
</head>
<body>


<h1>댓글작성</h1>
	<c:url value="/rreply/write" var="action"></c:url>
	<form:form modelAttribute="rreply" method="post" action="${action }" >
		<label>맛집번호</label> : <form:input path="resNo" />
		<br>
		<label>작성자</label> : <form:input path="userId" />
		<br>
		<label>내용</label> : <form:input path="rreplyContent" />
		<br>
		<button type="submit" name="rwrite">작성</button>
	</form:form>
	
	
</body>
</html>