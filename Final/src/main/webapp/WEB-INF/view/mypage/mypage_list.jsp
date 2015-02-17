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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize_href.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo_href.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/component_href.css" />
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script>
</head>
<body>
		<c:url value="/mypage/myinfo" var="myinfo" />
		<c:url value="/favorite/list?userId=${loginUser.userId}" var="list"/>
		<c:url value="/friend/list?userId=${loginUser.userId}" var="myfriends" />
		<c:url value="/msg/main" var="message" />
			<section class="color-5">
				<nav class="cl-effect-5">
					<a href="${myinfo}"><span class="linkspan" data-hover="Myinfo">개인정보</span></a> 
					<a href="${list}"><span class="linkspan" data-hover="Favorite">즐겨찾기</span></a> 
					<a href="${myfriends}"><span class="linkspan" data-hover="Friend">친구</span></a> 
					<a href="${message}"><span class="linkspan" data-hover="Message">쪽지함</span></a> 
				</nav>
			</section>
			
</body>
</html>
