<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabs.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/tabstyles.css" />
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="<%=request.getContextPath() %>/js/modernizr.custom.js"></script> 
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />
	<!-- 여기에 탭으로 보낸쪽지함, 받은쪽지함, 신고함 들어옴  -->
	<svg class="hidden">
			<defs>
				<path id="tabshape" d="M80,60C34,53.5,64.417,0,0,0v60H80z"/>
			</defs>
	</svg>
			<section>
				<div class="tabs tabs-style-shape">
					<nav>
						<ul>
							<li>
								<a href="#section-shape-1">
									<svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
									<span>보낸 쪽지함</span>
								</a>
							</li>
							<li>
								<a href="#section-shape-2">
									<svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
									<svg viewBox="0 0 80 60" preserveAspectRatio="none"><use xlink:href="#tabshape"></use></svg>
									<span>받은 쪽지함</span>
								</a>
							</li>
						</ul>
					</nav>
					<div class="content-wrap">
						<section id="section-shape-1">
						<p><jsp:include page="/WEB-INF/view/msg/send_list.jsp" /></p>
						</section>
						<section id="section-shape-2">
						<p><jsp:include page="/WEB-INF/view/msg/receive_list.jsp" /></p>
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