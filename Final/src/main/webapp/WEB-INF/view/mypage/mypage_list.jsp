<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content="Creative Link Effects: Subtle and modern effects for links or menu items" />
<meta name="keywords" content="link effect, css transition, style, inspiration, css3, menu item, web design" />
<meta name="author" content="Codrops" />
<title>마이페이지</title>
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/component.css" />
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script>
</head>
<body>
<div class="container">
		<c:url value="/mypage/myinfo" var="myinfo" />
		<c:url value="/favorite/list?userId=${loginUser.userId}" var="list"/>
		<c:url value="/friend/list?userId=${loginUser.userId}" var="myfriends" />
		<c:url value="/msg/main" var="message" />
			<section class="color-7">
				<nav class="cl-effect-21">
					<a href="${myinfo}">개인정보</a>
					<a href="${list}">즐겨찾기</a>
					<a href="${myfriends}">친구리스트</a>
					<a href="${message}">쪽지함</a>
				</nav>
			</section>
</div>
	
<%-- <table border="1">
		<c:url value="/mypage/myinfo" var="myinfo" />
		<c:url value="/favorite/list?userId=${loginUser.userId}" var="list"/>
		<c:url value="/friend/list?userId=${loginUser.userId}" var="myfriends" />
		<c:url value="/msg/main" var="message" />
		<tr>
			<td><a href="${myinfo}"><br>개인정보<br></a></td>
			<td><a href="${list}"><br>즐겨찾기<br></a></td>
			<td><a href="${myfriends}"><br>친구리스트<br></a></td>
			<td><a href="${message}"><br>쪽지함<br></a></td>
		</tr>
	</table> --%>
</body>
</html>
