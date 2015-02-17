<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
<meta name="author" content="Codrops" />
<title>쪽지함</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabstyles.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script> 
</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
<c:url value="/admin/myinfo" var="myinfo" />
<c:url value="/admin/Users" var="users" />
<c:url value="/admin/Restaurant" var="restaurant" />
<c:url value="/admin/Review" var="review" />
<c:url value="/admin/Rreply" var="rreply" />
<c:url value="/admin/Board" var="board" />
<c:url value="/admin/Breply" var="breply" />
<c:url value="/msg/main" var="message" />
<c:url value="/admin/message" var="report" />
	
<!-- 	<svg class="hidden">
			<defs>
				<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z" />
			</defs>
	</svg> -->
	<section>
		<div class="tabs tabs-style-linebox">
			<nav>
				<ul>
					<!-- <li><a href="#section-linebox-1"><span>개인정보</span></a></li> -->
					<li><a href="#section-linebox-2"><span>회원관리</span></a></li>
					<li><a href="#section-linebox-3"><span>맛집페이지</span></a></li>
					<li><a href="#section-linebox-4"><span>기타게시판</span></a></li>
					<!-- <li><a href="#section-linebox-5"><span>쪽지함</span></a></li> -->
					<li><a href="#section-linebox-6"><span>신고글</span></a></li>
				</ul>
			</nav>
			<div class="content-wrap">
				<%-- <section id="section-linebox-1">
					<p><jsp:include page="/WEB-INF/view/admin/admin_myinfo.jsp" /></p>
				</section> --%>
				<section id="section-linebox-2">
					<jsp:include page="/WEB-INF/view/admin/admin_users_jqgrid.jsp" />
				</section>
				<section id="section-linebox-3">
					<jsp:include page="/WEB-INF/view/admin/admin_restaurant_jqgrid.jsp" /><br>
					<jsp:include page="/WEB-INF/view/admin/admin_review_jqgrid.jsp" /><br>
					<jsp:include page="/WEB-INF/view/admin/admin_rreply_jqgrid.jsp" /><br>
					
				</section>
				<section id="section-linebox-4">
					<jsp:include page="/WEB-INF/view/admin/admin_board_jqgrid.jsp" /><br>
					<jsp:include page="/WEB-INF/view/admin/admin_breply_jqgrid.jsp" /><br>
				</section>
				<%-- <section id="section-linebox-5">
					<jsp:include page="/WEB-INF/view/msg/msg.jsp" /><br>
				    <jsp:include page="/WEB-INF/view/msg/send_list.jsp" />
				    <jsp:include page="/WEB-INF/view/msg/receive_list.jsp" />
				</section> --%>
				<section id="section-linebox-6">
				    <jsp:include page="/WEB-INF/view/msg/receive_list.jsp" />
				</section>
				</div>
				</div>
				</section>

	<script src="<%=request.getContextPath() %>/js/cbpFWTabs.js"></script>
		<script>
			(function() {

				[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
					new CBPFWTabs( el );
				});

			})();
 </script>
<%--  
	<table border="1">
		<tr>
			<td><a href="${myinfo}"><br>개인정보<br></a></td>
			<td><a href="${users}"><br>회원관리<br></a></td>
			<td><a href="${restaurant}"><br>맛집 게시글관리<br></a></td>
			<td><a href="${review}"><br>맛집리뷰 게시글관리<br></a></td>
			<td><a href="${rreply}"><br>맛집 댓글관리<br></a></td>
			<td><a href="${board}"><br>기타 게시글관리<br></a></td>
			<td><a href="${breply}"><br>기타게시판 댓글관리<br></a></td>
			<td><a href="${message}"><br>쪽지함<br></a></td>
			<td><a href="${report}"><br>신고함<br></a></td>
		</tr>
	</table> --%>

</body>
</html>