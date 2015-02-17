<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo.css" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Off-Canvas Menu Effects - Bubble</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
<!-- 		<link rel="shortcut icon" href="../favicon.ico"> -->
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_bubble.css" />
	<%-- 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_elastic.css" /> --%>
			<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_topexpand.css" /> --%>
		<script src="<%=request.getContextPath()%>/js/snap.svg-min.js"></script>
		<!-- <script>var stickyOffset = $('.sticky').offset().top;

		$(window).scroll(function(){
		  var sticky = $('.sticky'),
		      scroll = $(window).scrollTop();

		  if (scroll >= stickyOffset) sticky.addClass('fixed');
		  else sticky.removeClass('fixed');
		});</script> -->
</head>
<style>

</style>
<body>

	<c:url value="/board/list" var="board" />
	<c:url value="/meeting/list" var="meeting"/>
	<c:url value="/ranking/list" var="ranking"/>
	<c:url value="/main" var="main"/>

<div class="menudiv">
			<div class="menu-wrap">
				<nav class="menunav">
					<div class="icon-list">
						<a href="${main}"><i class="fa fa-fw fa-star-o"></i><span>메인으로</span></a>
						<a href="${ranking}"><i class="fa fa-fw fa-bell-o"></i><span>맛집 랭킹</span></a>
						<a href="${meeting}"><i class="fa fa-fw fa-envelope-o"></i><span>번개모임 게시판</span></a>
						<a href="${board}"><i class="fa fa-fw fa-comment-o"></i><span>자유게시판</span></a>
						<a href="#"><i class="fa fa-fw fa-bar-chart-o"></i><span>이용규칙</span></a>
					</div>
				</nav>
				<button class="close-button" id="close-button">Close Menu</button>
				<div class="morph-shape" id="morph-shape" data-morph-open="M-7.312,0H15c0,0,66,113.339,66,399.5C81,664.006,15,800,15,800H-7.312V0z;M-7.312,0H100c0,0,0,113.839,0,400c0,264.506,0,400,0,400H-7.312V0z">
					<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" viewBox="0 0 100 800" preserveAspectRatio="none">
						<path d="M-7.312,0H0c0,0,0,113.839,0,400c0,264.506,0,400,0,400h-7.312V0z"/>
					</svg>
				</div>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<header class="codrops-header">
						
						<h1><span>오늘,맛집,성공적</span></h1>
				<div id="wrapper">
		<div id="header_info">
			<c:if test="${!empty loginUser }">
		<img  width="40" height="40" src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
		${loginUser.userId }님 반갑습니다. 
		<c:url value="/logout" var="logout" />
				<a href="${logout}"><button>로그아웃</button></a>
				<c:url value="/mypage/myinfo" var="mypage" />
				<a href="${mypage}"><button>개인정보</button></a>
			</c:if>
			<c:if test="${empty loginUser }">

				<c:url value="/login" var="login" />
				<a href="${login}"><button>로그인 하기</button></a>
				<c:url value="/join" var="join" />
				<a href="${join}"><button>가입 하기</button></a>
			</c:if>
		</div>
	</div>
					</header>
					
				</div>
			</div><!-- /content-wrap -->
		</div>
		<%-- <script src="<%=request.getContextPath() %>/js/main.js"></script> --%>
		<script src="<%=request.getContextPath() %>/js/classie.js"></script>
	<%-- 	<script src="<%=request.getContextPath() %>/js/main4.js"></script> --%>
		<script src="<%=request.getContextPath() %>/js/main3.js"></script>
</body>
</html>
