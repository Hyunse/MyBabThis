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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize_tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo_tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabstyles.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script> 
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<c:if test="${loginUser.userId != 'admin'}">
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />
</c:if>
<c:if test="${loginUser.userId == 'admin'}">
<jsp:include page="/WEB-INF/view/admin/admin_menu.jsp" />
</c:if>
			<br>
			<br>
			<section>
				<div class="tabs tabs-style-topline">
					<nav>
						<ul>
							<li><a href="#section-topline-1"><span>보낸 쪽지함</span></a></li>
							<li><a href="#section-topline-2"><span>받은 쪽지함</span></a></li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-topline-1">
						<jsp:include page="/WEB-INF/view/msg/send_list.jsp" />
						</section>
						<section id="section-topline-2">
						<jsp:include page="/WEB-INF/view/msg/receive_list.jsp" />
						</section>
					</div><!-- /content -->
				</div><!-- /tabs -->
			</section>


 <script src="<%=request.getContextPath() %>/js/cbpFWTabs.js"></script>
		<script>
			(function() {

				[].slice.call( document.querySelectorAll( '.tabs' ) ).forEach( function( el ) {
					new CBPFWTabs( el );
				});

			})();
 </script>

</body>
</html>