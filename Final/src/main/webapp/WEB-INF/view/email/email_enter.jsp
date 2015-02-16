<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Text Input Effects</title>
		<meta name="description" content="Simple ideas for enhancing text input interactions" />
		<meta name="keywords" content="input, text, effect, focus, transition, interaction, inspiration, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/textinput-normalize.css" />
		<link rel="stylesheet" type="text/css" href="fonts/css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/textinput-demo.css" />
		<link rel="stylesheet" type="text/css" href="css/textinput-component.css" />
<title>아이디와 비밀번호 찾기</title>

</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	
	$("#go").click(function(){
		alert("체크");
	   
		var email = $('#email').val();
	   
	    $.ajax({
	    type: "POST",
	    url: "<%=request.getContextPath()%>/email/search",
	    data: "email="+ email ,
	    contentType:"application/x-www-form-urlencoded; charset=utf-8",
	    
	  
	    success : function(responseText){
	    	
	    	alert("이메일을 보냈습니다. " +responseText);
	    },
	    error:function(request,status,error){
	        alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
  		
	    
	    });
	})
})
</script>
<script src="<%=request.getContextPath()%>js/classie.js"></script>
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

				[].slice.call( document.querySelectorAll( 'input.input__field' ) ).forEach( function( inputEl ) {
					// in case the input is already filled..
					if( inputEl.value.trim() !== '' ) {
						classie.add( inputEl.parentNode, 'input--filled' );
					}

					// events:
					inputEl.addEventListener( 'focus', onInputFocus );
					inputEl.addEventListener( 'blur', onInputBlur );
				} );

				function onInputFocus( ev ) {
					classie.add( ev.target.parentNode, 'input--filled' );
				}

				function onInputBlur( ev ) {
					if( ev.target.value.trim() === '' ) {
						classie.remove( ev.target.parentNode, 'input--filled' );
					}
				}
			})();
		</script>
<body>
	<section class="content bgcolor-7">
	<h3 >아이디/비밀번호 찾기</h3>
	<br>

	
	<span class="input input--jiro"> 
	<input id="email" name="email"
		class="input__field input__field--jiro" type="text" id="input-10" id="email" name="email"/>
		<label class="input__label input__label--jiro" for="input-10" >
			<span class="input__label-content input__label-content--jiro"> Email</span>
				</label></span>
		 <!-- <input type="text" id="email" name="email"> -->
		<input type="button" id="go" value="submit">
		<br><br>
		</section>
		<div id="drophere"></div>
</body>
</html>