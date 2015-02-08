<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:url value="/login/confirm" var="action"></c:url>
		<form:form modelAttribute="loginUser" method="post" action="${action}">
			<label>아이디</label> : <form:input path="userId" />
			<br>
			<label>패스워드</label> : <form:input path="userPass" />
			<br>

			<button type="submit" name="login">로그인</button>
			<button type="submit" name="join">가입</button>
		</form:form>
	
	
</body>
</html>