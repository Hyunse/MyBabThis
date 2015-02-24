<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유 게시판 글쓰기</title>
</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>

	<c:url value="/board/confirm" var="write"></c:url>
	<center>
	<form:form modelAttribute="boardInfo" method="post" action="${write}">
		
		<div style="margin-left: 3em;">
		<h2 style="font-family: Nanum Gothic">자유게시판</h2>
		
		<form:hidden path="boardType" value="F"/>
		<br>
		<br>
		<form:hidden path="userId" value="${loginUser.userId }" />
		<p class="text-muted">제목&nbsp;&nbsp;&nbsp;&nbsp;<form:input path="boardTitle" size="152dp"/></p>

		<p class="text-muted">내용&nbsp; <form:textarea path="boardContent" cols="150" rows="20"/></p>  
		<br>
		<br>

		<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-ok"></span> 완료</button>
		</div> 
	</form:form>
	</center>
</body>
</html>