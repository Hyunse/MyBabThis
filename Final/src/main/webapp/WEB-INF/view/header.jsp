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
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_bubble.css" />
		<script src="<%=request.getContextPath()%>/js/snap.svg-min.js"></script>
</head>
<body>
	<h1>로고</h1>
	<div id="wrapper">
		<h1>헤더 부분</h1>
		<div id="header_info">
			<c:if test="${!empty loginUser }">
		<img  width="40" height="40" src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
		${loginUser.userId }님 반갑습니다. 
		<c:url value="/logout" var="logout" />
				<a href="${logout}"><button>로그아웃</button></a>
				<c:url value="/mypage" var="mypage" />
				<a href="${mypage}"><button>개인정보</button></a>
			</c:if>
			<c:if test="${empty loginUser }">

				<c:url value="/login" var="login" />
				<a href="${login}"><button>로그인 하기</button></a>
				<c:url value="/join" var="join" />
				<a href="${join}"><button>가입 하기</button></a>
				<c:url value="/joinform" var="joinform" />
				<a href="${joinform}"><button>가입폼</button></a>
			</c:if>
		</div>
	</div>
	<c:url value="/board/list" var="board" />
	<c:url value="/meeting/list" var="meeting"/>
	<c:url value="/ranking/list" var="ranking"/>
	<c:url value="/main" var="main"/>
	<table border="1">
		<tr>
			<td><a href="${main}">메인</a></td>
			<td><a href="${ranking}">맛집랭킹</a></td>
			<td><a href="${meeting}">번개모임</a></td>
			<td><a href="${board}">자유게시판</a></td>
			<td>이용규칙</td>
		</tr>

	</table>
<div class="container">
			<div class="menu-wrap">
				<nav class="menu">
					<div class="icon-list">
						<a href="#"><i class="fa fa-fw fa-star-o"></i><span>Favorites</span></a>
						<a href="#"><i class="fa fa-fw fa-bell-o"></i><span>Alerts</span></a>
						<a href="#"><i class="fa fa-fw fa-envelope-o"></i><span>Messages</span></a>
						<a href="#"><i class="fa fa-fw fa-comment-o"></i><span>Comments</span></a>
						<a href="#"><i class="fa fa-fw fa-bar-chart-o"></i><span>Analytics</span></a>
						<a href="#"><i class="fa fa-fw fa-newspaper-o"></i><span>Reading List</span></a>
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
					
						<nav class="codrops-demos">
							<a href="wave.html">Wave</a>
						</nav>
					</header>
					
				</div>
			</div><!-- /content-wrap -->
		</div>
</body>
</html>
