<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta name="description" content="Creative Link Effects: Subtle and modern effects for links or menu items" />
<meta name="keywords" content="link effect, css transition, style, inspiration, css3, menu item, web design" />
<meta name="author" content="Codrops" />
<title>지역메뉴</title>
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize_href.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo_href.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/component_href.css" />
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script>
</head>
<body>
	<section class="color-5">
		<nav class="cl-effect-5">
			<a href="/Final/ranking/all"><span data-hover="전체">전체</span></a> 
			<a href="/Final/ranking/loc?locName=건대"><span data-hover="건대">건대</span></a>
			<a href="/Final/ranking/loc?locName=강남"><span data-hover="강남">강남</span></a>
			<a href="/Final/ranking/loc?locName=송파"><span data-hover="송파">송파</span></a>
			<a href="/Final/ranking/loc?locName=대학로"><span data-hover="대학로">대학로</span></a>
			<a href="/Final/ranking/loc?locName=신림"><span data-hover="신림">신림</span></a>
			<a href="/Final/ranking/loc?locName=홍대"><span data-hover="홍대">홍대</span></a>
			<a href="/Final/ranking/loc?locName=신촌"><span data-hover="신촌">신촌</span></a>
			<a href="/Final/ranking/loc?locName=종로"><span data-hover="종로">종로</span></a>
			<a href="/Final/ranking/loc?locName=영등포"><span data-hover="영등포">영등포</span></a>
		</nav>
	</section>
	<h1>맛집 top5</h1><!-- 
	<section >
			<a href="/Final/restaurant/write"><button  class="btn btn-default"><span class="glyphicon glyphicon-pencil">  </span> 글쓰기</button></a>
	</section> -->
</body>
</html>