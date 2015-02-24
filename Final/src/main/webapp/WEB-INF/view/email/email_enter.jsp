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
		
		<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
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

	
<center>
	<div style="font-size: 20px" ><span class="glyphicon glyphicon-question-sign" ></span>&nbsp 아이디/비밀번호가 기억나지 않으세요?</div>
	<br>

	<input id="email" name="email" placeholder="Enter email" size="50"/>
	<br>
	<br>
	<input class="btn btn-default" type="button" id="go" value="submit">
	
</center>
</body>
</html>