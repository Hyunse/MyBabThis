<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맛집 댓글보기</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/js/modernizr.custom.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Nifty Modal Window Effects with CSS Transitions and Animations" />
<meta name="keywords"
	content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/default_modal.css" />
<link rel="stylesheet" type="text/css" href="css/component_modal.css" />
<script src="js/modernizr.custom.js"></script>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/tabstyles.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/default.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/component.css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/cs-select.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/cs-skin-elastic.css" />




<!--  <script>
  $(function() {
    $( "#tabs" ).tabs();
  }); 
 </script> -->
<script>
	$(function() {
		$(".menu").menu();
	});
</script>

<style>
.ui-menu {
	width: 150px;
}
</style>

</head>
<body>
<<<<<<< HEAD

		
=======
	<div class="sticky">
>>>>>>> branch 'master' of https://github.com/Hyunse/MyBabThis
	<jsp:include page="/WEB-INF/view/header.jsp" />
</div>
	<hr>
	<h1>맛집 페이지</h1>
	<img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}"
		width="150" height="150">
	<table border="1">
		<tr>
			<th>맛집 번호</th>
			<th>업체명</th>
			<th>전화번호</th>
			<th>내용</th>
			<th>평점</th>
			<th>비고</th>
			<th>즐겨찾기</th>
		<tr>
			<td><c:out value="${restaurant.resNo}" /></td>
			<td><c:out value="${restaurant.locName}" /></td>
			<td><c:out value="${restaurant.resName}" /></td>
			<td><c:out value="${restaurant.resContent}" /></td>
			<td><c:out value="${restaurant.resScore }" /></td>

			<td><c:url value="/restaurant/edit?resNo=${restaurant.resNo}"
					var="url" /> <a href="${url }"><button>편집</button></a> <c:url
					value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }"
					var="url" /> <a href="${url }"><button>삭제</button></a>
			<td><a
				href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}"><button>즐겨찾기</button></a>
			</td>
		</tr>
	</table>
	<hr>
	<div class="container">
		<section>
		<div class="tabs tabs-style-topline">
			<nav>
			<ul>
				<li><a href="#section-topline-1" class="icon icon-home"><span>댓글</span></a></li>
				<li><a href="#section-topline-2" class="icon icon-gift"><span>리뷰</span></a></li>
			</ul>
			</nav>
			<div class="content-wrap">
				<section id="section-topline-1">
				<table border="1">
					<tr>
						<!-- <th>번호</th> -->
						<th>내용</th>
						<th>작성자</th>
						<th>등록일</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
					<c:forEach items="${rreplys }" var="rreply">
						<tr>
							<%-- <td><c:out value="${rreply.rreplyNo }" /></td> --%>
							<td><c:out value="${rreply.rreplyContent }" /></td>
							<td>
								<ul class="dl-menu">
									<li><c:out value="${rreply.userId}" /> <a
										href="/Final/friend/create?userId=${loginUser.userId}&friendId=${review.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${rreply.userId}">쪽지보내기</a></li>
								</ul>
							</td>
							<td><c:out value="${rreply.rreplyUpdatedate }" /></td>
							<td><c:url value="/rreply/edit?rreplyNo=${rreply.rreplyNo }"
									var="url"></c:url> <a href="${url}"><button>수정</button></a></td>
							<td><c:url
									value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }"
									var="url"></c:url> <a href="${url}"><button>삭제</button></a></td>
									
							<!-- <td><div class="container"><div class="main clearfix">
								<div class="column">
								<button class="md-trigger" data-modal="modal-1">삭제</button>
									</div></div></div></td> -->
						</tr>
					</c:forEach>
				</table>
				<c:url value="/rreply/write?resNo=${resNo }" var="url"></c:url> <a
					href="${url }"><button>댓글작성</button></a> </section>
				<section id="section-topline-2">
				<table border="1">
					<tr>
						<th>사진</th>
						<th>평가</th>
						<th>설명</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
					<c:forEach items="${reviews }" var="review">
						<tr>
							<td>등록된 사진이 없습니다.</td>
							<td><c:out value="${review.reviewScore }" /></td>
							<c:url value="/review/detail?reviewNo=${review.reviewNo }"
								var="url"></c:url>
							<td><a href="${url }"><c:out
										value="${review.reviewContent }" /></a></td>
							<td>
								<ul class="dl-menu">
									<li><c:out value="${review.userId}" />
										<ul>
											<li><a
												href="/Final/friend/create?userId=${loginUser.userId}&friendId=${review.userId}">친구추가</a></li>
											<li><a href="/Final/msg/send?receiver=${review.userId}">쪽지보내기</a></li>
										</ul></li>
								</ul>
							</td>
							<td><c:out value="${review.reviewUpdatedate }" /></td>
						</tr>
					</c:forEach>
				</table>
				<c:url
					value="/review/write?userId=${loginUser.userId }&resNo=${resNo }"
					var="url"></c:url> <a href="${url }"><button>리뷰작성</button></a> </section>
			</div>
			<!-- /content -->
		</div>
		<!-- /tabs --> </section>

	</div>


<!-- modal overaly -->
	<div class="md-overlay"></div><!-- the overlay element -->

		<!-- classie.js by @desandro: https://github.com/desandro/classie -->
		<script src="js/classie.js"></script>
		<script src="js/modalEffects.js"></script>

		<!-- for the blur effect -->
		<!-- by @derSchepp https://github.com/Schepp/CSS-Filters-Polyfill -->
		<script>
			// this is important for IEs
			var polyfilter_scriptpath = '/js/';
		</script>
		<script src="js/cssParser.js"></script>
		<script src="js/css-filters-polyfill.js"></script>
		
		

	<script src="<%=request.getContextPath()%>/js/cbpFWTabs.js"></script>
	<script>
		(function() {

			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});

		})();
	</script>
</body>
</html>
