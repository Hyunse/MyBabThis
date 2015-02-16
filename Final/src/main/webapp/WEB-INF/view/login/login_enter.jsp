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
		<meta name="keywords" content="dialog, effect, modal, overlay, animation, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<!-- common styles -->
		<link rel="stylesheet" type="text/css" href="css/dialog.css" />
		<!-- individual effect -->
		<link rel="stylesheet" type="text/css" href="css/dialog-don.css" />
		<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" media="screen" type="text/css" />

</head>
<body>

<div class="container">

  <div id="login-form">
  <fieldset>
  <h3>Login</h3>
		<c:url value="/login/confirm" var="action"></c:url>
		<form:form modelAttribute="loginCheck" method="post" action="${action}">
			<form:input class="Id" path="userId" value="ID" onBlur="if(this.value=='')this.value='ID'" onFocus="if(this.value=='ID')this.value='' " />
			<br>
			<form:password  path="userPass" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' " />
			<br>

			<button type="submit">Login</button>
			</form:form>
			<div class="button-wrap">
			<c:url value="/joinform" var="joinform" />
			<a href="${joinform}"><button data-dialog="somedialog" class="trigger">Join us</button></a></div>
		
		<c:url value="/email" var="email" />
		<br><br>
		<footer class="clearfix">
		  <p><span class="info">?</span><a href="${email}">Forgot Password</a>
 		</footer>
 </fieldset>

  </div> 
</div>
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