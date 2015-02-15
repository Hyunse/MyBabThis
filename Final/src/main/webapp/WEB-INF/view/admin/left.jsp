<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align: left;
}
</style>
</head>
<body>
	<c:url value="/main" var="main" />
	<c:url value="/admin/myinfo" var="myinfo" />
	<c:url value="/admin/Users" var="users" />
	<c:url value="/admin/Restaurant" var="restaurant" />
	<c:url value="/admin/Review" var="review" />
	<c:url value="/admin/Rreply" var="rreply" />
	<c:url value="/admin/Board" var="board" />
	<c:url value="/admin/Breply" var="breply" />
	<c:url value="/admin/message" var="message" />
	<c:url value="/admin/message" var="report" />

	<table border="1">
		<tr>
			<td><a href="${myinfo}"><br>개인정보<br></a></td>
			<td><a href="${users}"><br>회원관리<br></a></td>
			<td><a href="${restaurant}"><br>맛집게시글관리<br></a></td>
			<td><a href="${review}"><br>리뷰게시글관리<br></a></td>
			<td><a href="${rreply}"><br>맛집게시판댓글관리<br></a></td>
			<td><a href="${board}"><br>기타게시글관리<br></a></td>
			<td><a href="${breply}"><br>기타게시판댓글관리<br></a></td>
			<td><a href="${message}"><br>쪽지함<br></a></td>
			<td><a href="${report}"><br>신고함<br></a></td>
		</tr>
	</table>
	<br>

<!-- 	<xhtml>
	<head>
<title>좌우 2단 프레임</title>
	</head>
	<frameset cols="150,*" framespacing="0" border="0" frameborder="0">
		<frame src="a.html" name="menu" frameborder="no" border="0"
			framespacing="0" scrolling="no" marginwidth="10" marginheight="0">
		<frame src="b.html" name="main" scrolling="auto" marginwidth="10"
			marginheight="10">
	</frameset>
	</xhtml> -->
</body>
</html>