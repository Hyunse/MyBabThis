<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<hr>
	<h1>환영합니다 메인입니다.</h1>
	<c:url value="/restaurant/list?locName=건대" var="loc" />
	<a href="${loc }"><button type="submit">건대</button></a>
	<c:url value="/restaurant/list?locName=강남" var="loc" />
	<a href="${loc }"><button type="submit">강남</button></a>
</body>
</html>