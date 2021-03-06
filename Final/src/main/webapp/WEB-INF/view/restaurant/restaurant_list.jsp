<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title><head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>Grid Loading and Hover Effect | Demo 1</title>
		<meta name="description" content="Grid Loading and Hover Effect: Recreating Samsung's grid loading effect" />
		<meta name="keywords" content="grid loading, swipe, effect, slide, masonry, web design, tutorial" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<!-- <link rel="stylesheet" type="text/css" href="../css/normalize_g.css" />
		<link rel="stylesheet" type="text/css" href="../css/demo_g.css" /> -->
		<link rel="stylesheet" type="text/css" href="../css/component_g.css" />
		<script src="../js/modernizr.custom.js"></script>
	</head>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
<div class="container">
			<!-- Top Navigation -->
			
			<!-- 
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="#"><span>왼쪽에 뭔가 링크넣고</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="#"><span>오른쪽도 뭔가 링크넣고</span></a></span>
			</div>
			 -->
			
			<header class="codrops-header">
				<h1>맛집게시판</h1>	
				
			</header>
			<section class="grid-wrap">
				<ul class="grid swipe-right" id="grid">
					<li class="title-box">
						<h2>맛집 리스트<br>By<p>${boardLoc}</p></h2>
					</li>
					<li class="title-box"><p></p></li>
					
					<li class="title-box" style="text-align: right;">
					
						<h2><a href="write">글쓰기</a></h2>
					</li>
					
					
	<c:forEach items="${restaurants }" var="restaurant">
					<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url" />
					<li><a href="${url}"><img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" alt="dummy" width="300px" title="${restaurant.resContent}"><h3>${restaurant.resName}<br><b style="color: aqua;">${restaurant.locName}</b></h3></a></li>
					</c:forEach>
				</ul>
			</section>
			
		</div><!-- /container -->
		<script src="../js/masonry.pkgd.min.js"></script>
		<script src="../js/imagesloaded.pkgd.min.js"></script>
		<script src="../js/classie.js"></script>
		<script src="../js/colorfinder-1.1.js"></script>
		<script src="../js/gridScrollFx.js"></script>
		<script>
			new GridScrollFx( document.getElementById( 'grid' ), {
				viewportFactor : 0.4
			} );
		</script>
			<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>