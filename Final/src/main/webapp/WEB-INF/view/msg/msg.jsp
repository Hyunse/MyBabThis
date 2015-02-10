<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지함</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#tabs").tabs();
	});
</script>

</head>
<body>
	<!-- 여기에 탭으로 보낸쪽지함, 받은쪽지함, 신고함 들어옴  -->

	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">보낸 쪽지함</a></li>
			<li><a href="#tabs-2">받은 쪽지함</a></li>
		</ul>
		<div id="tabs-1">
			<jsp:include page="/WEB-INF/view/msg/send_list.jsp" />
		</div>
		<div id="tabs-2">
		<jsp:include page="/WEB-INF/view/msg/receive_list.jsp" />
		</div>
	</div>




</body>
</html>