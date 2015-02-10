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
		<form:form modelAttribute="loginCheck" method="post" action="${action}">
			<label>아이디</label> : <form:input path="userId" />
			<br>
			<label>패스워드</label> : <form:input path="userPass" />
			<br>

			<button type="submit">로그인</button>
			</form:form>
			<c:url value="/join" var="join"/>
			<a href="${join}"><button>가입하기</button></a>
	
</body>
</html>