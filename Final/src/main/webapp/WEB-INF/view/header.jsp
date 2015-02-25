<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Off-Canvas Menu Effects - Bubble</title>
<meta name="description"
	content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
<meta name="keywords"
	content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
<meta name="author" content="Codrops" />
<!-- 		<link rel="shortcut icon" href="../favicon.ico"> -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" />


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/menu_bubble.css" />

<%-- 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_elastic.css" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_topexpand.css" /> --%>
<script src="<%=request.getContextPath()%>/js/snap.svg-min.js"></script>

<!-- 부트스트랩 -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

<!-- <script>var stickyOffset = $('.sticky').offset().top;

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" />


<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/menu_bubble.css" />

<%-- 	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_elastic.css" /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/menu_topexpand.css" /> --%>
<script src="<%=request.getContextPath()%>/js/snap.svg-min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<!-- <script>var stickyOffset = $('.sticky').offset().top;
>>>>>>> branch 'master' of https://github.com/Hyunse/MyBabThis

		$(window).scroll(function(){
		  var sticky = $('.sticky'),
		      scroll = $(window).scrollTop();

		  if (scroll >= stickyOffset) sticky.addClass('fixed');
		  else sticky.removeClass('fixed');
		});</script> -->

<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

<!--  <script src="http://code.jquery.com/jquery-latest.js"></script> -->

</head>
<script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	WebFont.load({

				// For google fonts
				google : {
					families : [ 'Droid Sans', 'Droid Serif' ]
				},
				// For early access or custom font
				custom : {
					families : [ 'Nanum Gothic' ],
					urls : [ 'http://fonts.googleapis.com/earlyaccess/nanumgothic.css' ]
				}

			});

	
	$("#search").click(function(){
		alert("작동")
		var name = $('#resName').val();
		
		if(name != null){
		$.get("<%=request.getContextPath()%>/restaurant/list?resName="+name);
		$(location).attr('href',"<%=request.getContextPath()%>/restaurant/list?resName="+ name);}
});
});
</script>
<body class="">

	<c:url value="/board/list?page=1" var="board" />
	<c:url value="/meeting/list?page=1" var="meeting" />
	<c:url value="/ranking/all" var="ranking" />
	<c:url value="/main" var="main" />
	<c:url value="/rule" var="rule" />

	<%-- <div class="menudiv">
		<div class="menu-wrap">
			<nav class="menunav">
				<div class="icon-list">
					<a href="${main}"><i class="fa fa-fw fa-navicon"></i><span style="text-decoration: none">메인으로</span></a>
					<a href="${ranking}"><i class="fa fa-fw fa-trophy"></i><span style="text-decoration: none">맛집
							랭킹</span></a> <a href="${meeting}"><i class="fa fa-fw fa-bolt"></i><span style="text-decoration: none">번개모임</span></a>
					<a href="${board}"><i class="fa fa-fw fa-pencil-square-o"></i><span style="text-decoration: none">자유게시판</span></a>
					<a href="#"><i class="fa fa-fw fa-info-circle"></i><span style="text-decoration: none">이용규칙</span></a>
				</div>
			</nav>
			<button class="close-button" id="close-button">Close Menu</button>
			<div class="morph-shape" id="morph-shape"
				data-morph-open="M-7.312,0H15c0,0,66,113.339,66,399.5C81,664.006,15,800,15,800H-7.312V0z;M-7.312,0H100c0,0,0,113.839,0,400c0,264.506,0,400,0,400H-7.312V0z">
				<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%"
					viewBox="0 0 100 800" preserveAspectRatio="none">
						<path
						d="M-7.312,0H0c0,0,0,113.839,0,400c0,264.506,0,400,0,400h-7.312V0z" />
					</svg>
			</div>
		</div>

		<button class="menu-button" id="open-button">Open Menu</button> --%>

		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">


<div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
  </div>

<div class="collapse navbar-collapse navbar-ex1-collapse">
			<div class="navbar-right">




				<ul class="nav navbar-nav">


					<li><a href="${main}"><span
							class="glyphicon glyphicon-align-justify"></span><span>&nbsp
								메인으로</span></a></li>
					<li><a href="${ranking}"><span
							class="glyphicon glyphicon-thumbs-up"></span><span>&nbsp
								맛집랭킹</span></a></li>
					<li><a href="${meeting}"><span
							class="glyphicon glyphicon-flash"></span><span>&nbsp 번개모임</span></a></li>
					<li><a href="${board}"><span
							class="glyphicon glyphicon-user"></span><span>&nbsp 자유게시판</span></a></li>
					<li><a href="${rule}"><span
							class="glyphicon glyphicon-info-sign"></span><span>&nbsp
								이용규칙</span></a></li>

				</ul>
				<div class="navbar-form navbar-right" role="search">
					&nbsp&nbsp
					<c:if test="${!empty loginUser }">
						<img width="40" height="40"
							src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
						<span>${loginUser.userId }  ${loginUser.userGrade }</span>&nbsp&nbsp&nbsp&nbsp 
						
						<c:url value="/logout" var="logout" />
						
						<a href="${logout}"><button class="btn btn-default">로그아웃</button></a>
						<c:if test="${loginUser.userId != 'admin' }">
						<c:url value="/mypage/myinfo" var="mypage" />
						<a href="${mypage}"><button class="btn btn-default" id="userInfo">개인정보</button></a>
						</c:if>
						
						<c:if test="${loginUser.userId == 'admin' }">
					
						<c:url value="/admin/myinfo" var="adminpage" />
						<a href="${adminpage}"><button class="btn btn-default">관리</button></a>
						
						</c:if>
					</c:if>
					<c:if test="${empty loginUser }">

						<c:url value="/login" var="login" />
						<a href="${login}"><button class="btn btn-default">로그인</button></a>
						<c:url value="/join" var="join" />
						<a href="${join}"><button class="btn btn-default">가입</button></a>
					</c:if>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Search"
							id="resName">
					</div>

					<button class="btn btn-default" id="search">Search</button>
				</div>

			</div>
			</div>
		</nav>


		<div class="content-wrap">
			<div class="content">
				<header class="codrops-header">



<h2><img src="<%=request.getContextPath()%>/images/logo.png"></h2>
<!-- 
					<h2>
						오늘, 맛집, 성공적 <span class="glyphicon glyphicon-heart"></span>
					</h2>

 -->

				</header>

			</div>
		</div>
		<!-- /content-wrap -->
	</div>
	<%-- <script src="<%=request.getContextPath() %>/js/main.js"></script> --%>
	<script src="<%=request.getContextPath()%>/js/classie.js"></script>
	<%-- 	<script src="<%=request.getContextPath() %>/js/main4.js"></script> --%>
	<%-- <script src="<%=request.getContextPath()%>/js/main3.js"></script> --%>
</body>
</html>
