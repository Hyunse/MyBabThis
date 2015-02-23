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
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>

	<c:url value="/meeting/confirm" var="write"></c:url>
	<form:form modelAttribute="boardInfo" method="post" action="${write}" style= "margin-left: 5em">

		<label>번개모임</label> <form:hidden path="boardType" value="M" />
		<br>
		<br>

		<label>아이디</label> : <form:input path="userId" value="${loginUser.userId }" readonly="true"  />
		<br>

		<label>제목</label> : <form:input path="boardTitle"  />
		<br>
		<label>내용</label> : <form:textarea path="boardContent" cols="150"
			rows="20" />
		<br>
		<br>

		
		<button type="submit" name="finish" class="btn btn-primary" style="float: right; margin-right: 11em;">완료</button>
	</form:form>
</body>
</html>