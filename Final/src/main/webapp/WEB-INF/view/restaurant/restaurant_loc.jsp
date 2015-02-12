<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/restaurant/list" var="loc" />
	<a href="${loc }">전체보기</a>
	<c:url value="/restaurant/list?locName=건대" var="loc" />
	<a href="${loc }">건대</a>
	<c:url value="/restaurant/list?locName=강남" var="loc" />
	<a href="${loc }">강남</a>
	<c:url value="/restaurant/list?locName=송파" var="loc" />
	<a href="${loc }">송파</a>
	<c:url value="/restaurant/list?locName=대학로" var="loc" />
	<a href="${loc }">대학로</a>
	<c:url value="/restaurant/list?locName=신림" var="loc" />
	<a href="${loc }">신림</a>
	<c:url value="/restaurant/list?locName=홍대" var="loc" />
	<a href="${loc }">홍대</a>
	<c:url value="/restaurant/list?locName=신촌" var="loc" />
	<a href="${loc }">신촌</a>
	<c:url value="/restaurant/list?locName=종로" var="loc" />
	<a href="${loc }">종로</a>
	<c:url value="/restaurant/list?locName=영등포" var="loc" />
	<a href="${loc }">영등포</a>
</body>
</html>