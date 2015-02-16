<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>



<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Text Input Effects</title>
<meta name="description"
	content="Simple ideas for enhancing text input interactions" />
<meta name="keywords"
	content="input, text, effect, focus, transition, interaction, inspiration, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize_input.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo_input.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/component_input.css" />
</head>
<script>
$(document).ready(function() {
	
	 var re_pass = /^[a-z0-9_-]{6,18}$/; // 비밀번호 검사식
	 var re_email = /^([\w\.-]+)@([a-z\d\.-]+)\.([a-z\.]{2,6})$/; // 이메일 검사식
	
	 var form = $("#userform"), 
	 pass = $('#userPass'), 
	     email = $('#userEmail');
	
	
		form.submit(function(){
		alert("체크");
		if(re_pass.test(pass.val()) != true){
			alert("유효한 비밀번호를 입력하세요");
			pass.focus();
			event.preventDefault();
		}else if(re_email.test(email.val()) != true){
			alert("유효한 이메일을 입력하세요");
			email.focus();
			event.preventDefault();
		}
		
	});
	
	
	/* 이메일 유효성 체크 */
	$("#userEmail, #userPass").after('<strong></strong>');
	
	email.keyup(function(){
		var c = $(this).next('strong');
		if(email.val().length == 0){
			//c.text("이메일을 반드시 입력해주세요");
			$("#passChk").html("이메일을 반드시 입력해주세요");
		}else if(re_email.test(email.val()) != true ){
			//c.text("올바른 이메일 형식이 아닙니다.");
			$("#passChk").html("올바른 이메일 형식이 아닙니다.");
		}else{
			//c.text('적당합니다.')
			$("#passChk").html("적당합니다.");
		}
	})
	
/* 	패스워드 유효성 체크 */
	pass.keyup(function(){
		var c = $(this).next('strong');
		if(pass.val().length == 0){
			//c.text("");
	    	$("#passChk").html("");
		}else if(pass.val().length < 6 ){
			//c.text("너무 짧습니다.");
	    	$("#passChk").html("너무 짧습니다.");
		}else if(pass.val().length > 18 ){
				//c.text("너무 깁니다.");
		    	$("#passChk").html("너무 깁니다.");
		}else{
			//c.text('적당합니다.')
	    	$("#passChk").html("적당합니다.");
		}
	})
	 
	$("#idCheck").click(function(){
	
    var id = $('#userId').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/join/id",
    data: "id="+ id ,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
   
    
    success: function(args){
    	$("#dropId").html(args);
    },
    error: function (args) {
		console.log(path, args);
	}
    });
})
	$("#nameCheck").click(function(){
    var name = $('#userName').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/join/name",
    data: "name="+ name,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    
    success: function(args){
    	
    	$("#dropName").html(args);
    },
    error: function (args) {
    	
		console.log(path, args);
	}

    });
})
	$("#emailCheck").click(function(){
    var email = $('#userEmail').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/join/email",
														data : "email=" + email,
														contentType : "application/x-www-form-urlencoded; charset=utf-8",

														success : function(args) {
															$("#dropEmail")
																	.html(args);
														},
														error : function(args) {
															console.log(path,
																	args);
														}
													});
										})

						$("#pass2").blur(function() {
							/* var pass = document.form.userPass.value; */
							/* var pass2 = document.form.userPass2.value; */
							var pass = $("#userPass").val();
							var pass2 = $("#pass2").val();
							//alert("aaa" + pass + ", " + pass2);
							var message1 = "비밀번호를 입력하세요.";
							var message2 = "비밀번호가 다릅니다.";
							var message3 = "비밀번호가 동일합니다.";
							//alert(pass + "," + pass2);
							if (pass2 != pass) {
								$("#chk").html(message2);
							} else {
								$("#chk").html(message3);
							}
							return;
						})
					});
</script>
<body>




	<section class="content">
		<c:url value="/join/confirm" var="confirm" />
		<form:form modelAttribute="loginCheck" method="post"
			action="${confirm}" id="userform">

			<span class="input input--hoshi"> <form:input
					class="input__field input__field--hoshi" path="userId" id="userId" />
				<label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="userId"> <span
					class="input__label-content input__label-content--hoshi">아이디</span></label>
			</span>
			<input type="button" value="중복체크" name="idCheck" id="idCheck">
			
			
			<div id="dropId"></div>
			


			<span class="input input--hoshi"> <label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="userName"> <span
					class="input__label-content input__label-content--hoshi">닉네임</span></label>
				<form:input class="input__field input__field--hoshi" path="userName"
					id="userName" />
			</span>
			
			<input type="button" value="중복체크" name="nameCheck" id="nameCheck">
			
			
			<div id="dropName"></div>
			
			
			
			<span class="input input--hoshi"> 
			<label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="userPass"> <span
					class="input__label-content input__label-content--hoshi">비밀번호</span></label>
				<form:input type="password" class="input__field input__field--hoshi" path="userPass"
					id="userPass" />
			</span>
			<div id="passChk"></div>
			
			<span class="input input--hoshi"> 
			<label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="pass2"> <span
					class="input__label-content input__label-content--hoshi">비밀번호확인</span></label>
				<input type="password" class="input__field input__field--hoshi"
					id="pass2" />
			</span>
			
			
			<div id="chk"></div>
		
			
			<span class="input input--hoshi"> 
			<label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="userEmail"> <span
					class="input__label-content input__label-content--hoshi">이메일</span></label>
				<form:input type="email" class="input__field input__field--hoshi"
					path="userEmail" id="userEmail" />
			</span>
			<div id="emailChk"></div>
			
			<input type="button" value="중복체크" name="emailCheck" id="emailCheck">
			<div id="dropEmail"></div>
			
			
			<span class="input input--hoshi">
			<label
				class="input__label input__label--hoshi input__label--hoshi-color-2"
				for="userPhone"> <span
					class="input__label-content input__label-content--hoshi">전화번호</span></label>
				<form:input class="input__field input__field--hoshi"
					path="userPhone" id="userPhone" />
			</span>
			
			
			<label>성별</label>
			<form:radiobutton path="userGender" value="1" />남
							<form:radiobutton path="userGender" value="0" />여
							

		<form:hidden path="userImg" value="star.png" />
			<input type="submit" value="가입">
		</form:form>
	</section>

	<script src="js/classie.js"></script>
	<script>
		(function() {
			// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
			if (!String.prototype.trim) {
				(function() {
					// Make sure we trim BOM and NBSP
					var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
					String.prototype.trim = function() {
						return this.replace(rtrim, '');
					};
				})();
			}

			[].slice.call(document.querySelectorAll('input.input__field'))
					.forEach(function(inputEl) {
						// in case the input is already filled..
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}

						// events:
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}

			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		})();
	</script>

</body>
</html>