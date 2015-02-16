<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>로그인하기</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dialog Effects | Don</title>
<meta name="description" content="A Collection of Dialog Effects" />
<meta name="keywords"
	content="dialog, effect, modal, overlay, animation, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/dialog-demo.css" />
<!-- common styles -->
<link rel="stylesheet" type="text/css" href="css/dialog.css" />
<!-- individual effect -->
<link rel="stylesheet" type="text/css" href="css/dialog-don.css" />
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" media="screen"
	type="text/css" />

</head>

	
<body>

	<div class="container">

		<div id="login-form">
			<fieldset>
				<h3>Login</h3>
				<c:url value="/login/confirm" var="action"></c:url>
				<form:form modelAttribute="loginCheck" method="post"
					action="${action}">
					<form:input class="Id" path="userId" value="ID"
						onBlur="if(this.value=='')this.value='ID'"
						onFocus="if(this.value=='ID')this.value='' " />
					<br>
					<form:password path="userPass" value="Password"
						onBlur="if(this.value=='')this.value='Password'"
						onFocus="if(this.value=='Password')this.value='' " />
					<br>

					<button type="submit">Login</button>
				</form:form>
				<div class="button-wrap">
					<c:url value="/joinform" var="joinform" />
					<%-- <a href="${joinform}"> --%>
					<button data-dialog="somedialog" class="trigger">Join us</button>

				</div>

				<c:url value="/email" var="email" />
				<br>
				<br>
				<footer class="clearfix">
					<p>
						<span class="info">?</span><a href="${email}" >Forgot Password</a>
						<div class="button-wrap">
						
						<!-- <button id="email_dialog" data-dialog="email_dialog" class="trigger" >Forgot Password</button> -->
						</div>
				</footer>
			</fieldset>

		</div>
	</div>

	<%-- 회원가입 다이얼로그 --%>
	<div id="somedialog" class="dialog">
		<div class="dialog__overlay"></div>
		<div class="dialog__content">
			<h2>
				<strong>Howdy</strong>, I'm a dialog box
			</h2>
			<div>
				<button class="action" data-dialog-close>Close</button>
			</div>
		</div>
	</div>
	
	<%-- id/password 찾기 다이얼로그 --%>
<!-- 	<div id="email_dialog" class="dialog">
		<div class="dialog__overlay"></div>
		<div class="dialog__content">
			<section class="content bgcolor-7">
				<h3>아이디/비밀번호 찾기</h3>
				<br> <span class="input input--jiro"> <input id="email"
					name="email" class="input__field input__field--jiro" type="text"
					id="input-10" id="email" name="email" /> <label
					class="input__label input__label--jiro" for="input-10"> <span
						class="input__label-content input__label-content--jiro">
							Email</span>
				</label></span>
				<input type="text" id="email" name="email">
				<input type="button" id="go" value="submit"> <br>
				<br>
			</section>
			<div>
				<button class="action" data-dialog-close>Close</button>
			</div>
		</div>
	</div> -->
	
	<%-- 다이얼로그창 띄우기 --%>
	<script src="js/classie.js"></script>
		<script src="js/dialogFx.js"></script>
		<script>
			(function() {

				var dlgtrigger = document.querySelector( '[data-dialog]' ),
					somedialog = document.getElementById( dlgtrigger.getAttribute( 'data-dialog' ) ),
					dlg = new DialogFx( somedialog );

				dlgtrigger.addEventListener( 'click', dlg.toggle.bind(dlg) );

			})();
		</script>

</body>
</html>