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
			<a href="/Final/admin/myinfo"><span class="linkspan" data-hover="관리자정보">관리자정보</span></a> 
			<a href="/Final/admin/Users"><span class="linkspan" data-hover="회원관리">회원관리</span></a> 
			<a href="/Final/admin/Restaurant"><span class="linkspan" data-hover="맛집페이지">맛집페이지</span></a>
			<a href="/Final/admin/Board"><span class="linkspan" data-hover="기타게시판">기타게시판</span></a>
			<a href="/Final/msg/reportList"><span class="linkspan" data-hover="신고글">신고글</span></a>
			<a href="/Final/msg/main"><span class="linkspan" data-hover="쪽지함">쪽지함</span></a>
		</nav>
	</section>

</body>
</html>