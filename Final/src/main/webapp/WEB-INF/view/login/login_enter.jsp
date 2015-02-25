<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>로그인하기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="A Collection of Dialog Effects" />
<meta name="keywords"
	content="dialog, effect, modal, overlay, animation, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<!-- common styles -->
<!-- 
<link rel="stylesheet" type="text/css" href="css/dialog.css" /> -->
<!-- individual effect -->
<!-- <link rel="stylesheet" type="text/css" href="css/dialog-don.css" /> -->

<script src="js/modernizr.custom.js"></script>
<!-- 
<link rel="stylesheet" type="text/css" href="css/default_modal.css" />
<link rel="stylesheet" type="text/css" href="css/component_modal.css" />
		 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" media="screen"
	type="text/css" />

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

</head>

<script>
$(document).ready(function(){
	
	<%-- $("#email").click(function(){
		   
			    
		  window.open("<%=request.getContextPath()%>/email","_blank"," width = 500 height = 300 left=650 top=300");
		    
		
		
	}) --%>
	
	
	$("#go").click(function(){
		alert("잠시만 기다려주세요.");
	   
		var email = $('#email').val();
	   
	    $.ajax({
	    type: "POST",
	    url: "<%=request.getContextPath()%>/email/search",
	    data: "email="+ email ,
	    contentType:"application/x-www-form-urlencoded; charset=utf-8",
	    
	  
	    success : function(responseText){
	    	
	    	
	    	alert("이메일을 보냈습니다." + responseText);
	    	
	    },
	    error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
  		
	    
	    })
	})
	$("#email").keyup(function(){
    var email = $('#email').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/login/email",
	data : "email=" + email,
	contentType : "application/x-www-form-urlencoded; charset=utf-8",

	success : function(args) {
	
	$("#dropEmail").html(args); 
	
	},
	error : function(args) {
	console.log(path,args);
				}
			});
			})
})
</script>
<body style="background: #e6e6e6">

	<!-- <div class="md-modal md-effect-1" id="modal-1">
		<div class="md-content">
			<h3 align="center">id/pw 찾기</h3>
			<span class="input input--jiro"> <input id="email"
				name="email" class="input__field input__field--jiro" type="text"
				id="input-10" id="email" name="email" />
				<label class="input__label input__label--jiro" for="input-10">
				<span class="input__label-content input__label-content--jiro"> Email</span>
			</label></span> 
			<input type="text" id="email" name="email">
			<input type="button" id="go" value="submit"> <br>
			<br>
			<br><br><br><br>
			<table style="margin: 0 auto;">
				<tr>
					<td><button id="go">확인</button></td>
					<td><button class="md-close">취소</button></td>
				</tr>

			</table>
			<br>
		</div>
	</div>
 -->


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
					<c:url value="/join" var="join" />
					<a href="${join}">
						<button data-dialog="somedialog" class="trigger">Join us</button>
					</a>

				</div>

				<c:url value="/email" var="email" />
				<br> <br>
				<footer class="clearfix">
					<br> <span class="info">?</span><a 
						data-toggle="modal" href="#myModal"> Forgot Password</a>
				</footer>

				<!-- 	<button class="md-trigger" data-modal="modal-1">id/pw 찾기</button> -->

			</fieldset>

		</div>
	</div>
	<%-- 회원가입 다이얼로그 --%>

	<%-- 	<div id="somedialog" class="dialog">
		<div class="dialog__overlay"></div>
		<div class="dialog__content">
			<h2>
				<strong>Howdy</strong>, I'm a dialog box
			</h2>
			<jsp:include page="../join/join_enter.jsp" />
			<div>
				<button class="action" data-dialog-close>Close</button>
			</div>
		</div>
	</div>
		
		<div class="md-overlay"></div><!-- the overlay element --> --%>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header" >
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title">
						<span class="glyphicon glyphicon-question-sign"></span>&nbsp 아이디/비밀번호가 기억나지 않으세요?

					</h4>
				</div>
				<div class="modal-body" >
					<br> <input type="email"  class="form-control" id="email" name="email" placeholder="Enter email" size="50"/>
						 <div id="dropEmail"></div>
				</div>
				<div class="modal-footer">
					<input class="btn btn-default" type="button" id="go" value="submit">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->



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

</body>
</html>
