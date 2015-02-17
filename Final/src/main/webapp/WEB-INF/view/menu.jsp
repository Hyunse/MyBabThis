<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
			<script src="<%=request.getContextPath() %>/js/classie.js"></script>
<%-- 		<script src="<%=request.getContextPath() %>/js/main4.js"></script> --%>
		<script src="<%=request.getContextPath() %>/js/main3.js"></script>
</body>
</html>