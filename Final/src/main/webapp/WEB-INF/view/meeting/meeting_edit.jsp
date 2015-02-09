<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시글 수정</h1>
	<c:url value="/board/edit" var="action"></c:url>
	<form:form modelAttribute="editBoard" method="post" action="${action}">
	<form:input path="boardNo"/><br>
	<label>게시판 종류</label> : <form:input path="boardType"/><br>
	<label>제목</label> : <form:input path="boardTitle"/><br>
	<label>작성자</label> : <form:input path="userId"/><br>
	<label>내용</label> : <form:textarea path="boardContent" cols="150" rows="20"/><br>
	
	
	<button type="submit" name="_event_edit">수정</button>
	<button type="submit" name="_event_delete">삭제</button>
	
	</form:form>
</body>
</html>