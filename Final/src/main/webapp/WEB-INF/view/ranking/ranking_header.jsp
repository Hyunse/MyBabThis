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
	<c:url value="/ranking/all" var="all" />
	<a href="${all }"><button type="submit">전체</button></a>
	<c:url value="/ranking/loc?locName=건대" var="loc" />
	<a href="${loc }"><button type="submit">건대</button></a>
	<c:url value="/ranking/loc?locName=강남" var="loc" />
	<a href="${loc }"><button type="submit">강남</button></a>
	<c:url value="/ranking/loc?locName=송파" var="loc" />
	<a href="${loc }"><button type="submit">송파</button></a>
	<c:url value="/ranking/loc?locName=대학로" var="loc" />
	<a href="${loc }"><button type="submit">대학로</button></a>
	<c:url value="/ranking/loc?locName=신림" var="loc" />
	<a href="${loc }"><button type="submit">신림</button></a>
	<c:url value="/ranking/loc?locName=홍대" var="loc" />
	<a href="${loc }"><button type="submit">홍대</button></a>
	<c:url value="/ranking/loc?locName=신촌" var="loc" />
	<a href="${loc }"><button type="submit">신촌</button></a>
	<c:url value="/ranking/loc?locName=종로" var="loc" />
	<a href="${loc }"><button type="submit">종로</button></a>
	<c:url value="/ranking/loc?locName=영등포" var="loc" />
	<a href="${loc }"><button type="submit">영등포</button></a>
</body>
</html>