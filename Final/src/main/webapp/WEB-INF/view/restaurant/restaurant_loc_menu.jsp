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
			<a href="/Final/restaurant/list"><span class="linkspan" data-hover="Total">전체</span></a> 
			<a href="/Final/restaurant/list?locName=건대"><span class="linkspan" data-hover="GunDae">건대</span></a>
			<a href="/Final/restaurant/list?locName=강남"><span class="linkspan" data-hover="Gangnam">강남</span></a>
			<a href="/Final/restaurant/list?locName=송파"><span class="linkspan" data-hover="Songpa">송파</span></a>
			<a href="/Final/restaurant/list?locName=대학로"><span class="linkspan" data-hover="Daehakro">대학로</span></a>
		</nav>
	</section>
	<section class="color-5">
		<nav class="cl-effect-5">
			<a href="/Final/restaurant/list?locName=신림"><span class="linkspan" data-hover="Sillim">신림</span></a>
			<a href="/Final/restaurant/list?locName=홍대"><span class="linkspan" data-hover="Hongdae">홍대</span></a>
			<a href="/Final/restaurant/list?locName=신촌"><span class="linkspan" data-hover="Shinchon">신촌</span></a>
			<a href="/Final/restaurant/list?locName=종로"><span class="linkspan" data-hover="Jongro">종로</span></a>
			<a href="/Final/restaurant/list?locName=영등포"><span class="linkspan" data-hover="Yeongdeungpo">영등포</span></a>
		</nav>
	</section>
	<section >
			<a href="/Final/restaurant/write"><button>글쓰기</button></a>
	</section>
</body>
</html>