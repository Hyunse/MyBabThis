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
	<!-- 	<c:url value="/main" var="main" />
	<c:url value="/admin/myinfo" var="myinfo" />
	<c:url value="/admin/users" var="users" />
	<c:url value="/admin/board" var="board" />
	<c:url value="/admin/message" var="message" /> -->

	
<table border="1">
		<c:url value="/mypage/myinfo" var="myinfo" />
		<c:url value="/mypage/myfriends" var="myfriends" />
		<c:url value="/msg/main" var="message" />
		<tr>
			<td><a href="${myinfo}">개인정보<br></a></td>
			<td><a href="${users}">즐겨찾기<br></a></td>
			<td><a href="${myfriends}">친구리스트<br></a></td>
			<td><a href="${message}">쪽지함<br></a></td>
		</tr>
	</table>
</body>
</html>