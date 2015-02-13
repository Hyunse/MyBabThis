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
</head>
<script>
$(document).ready(function() {
	
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
    data: "email="+ email ,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
  
    
    success: function(args){
    	$("#dropEmail").html(args);
    },
    error: function (args) {
		console.log(path, args);
	}
    });
})
	
$("#pass2").blur(function(){
        /* var pass = document.form.userPass.value; */
        /* var pass2 = document.form.userPass2.value; */
        var pass = $("#pass").val();
        var pass2 = $("#pass2").val();
        //alert("aaa" + pass + ", " + pass2);
        var message1 = "비밀번호를 입력하세요.";
        var message2 = "비밀번호가 다릅니다.";
        var message3 = "비밀번호가 동일합니다.";
        //alert(pass + "," + pass2);
        if(pass2 != pass) {
           $("#chk").html(message2);
        } else {
           $("#chk").html(message3);
        }
        return;
    })
});

</script>
<body>
	<c:url value="/join/confirm" var="confirm" />
	<form:form modelAttribute="loginCheck" method="post" action="${confirm}"	>

		<label>아이디</label> : <form:input path="userId" />
		<input type="button" value="중복체크" name="idCheck"
		id="idCheck"><div id="dropId"></div> 

		<br>
		<label>닉네임</label> : <form:input path="userName" />
		<input type="button" value="중복체크" name="nameCheck"
		id="nameCheck"><div id="dropName"></div> 
		<br>
		<label>비밀번호</label> : <form:password path="userPass" id="pass" />
		<br>
		<label>비밀번호확인</label> : <input type="password" id="pass2"/> <div id="chk"></div>
		<br>
		<label>E-mail</label> : <form:input path="userEmail" />
		<input type="button" value="중복체크" name="emailCheck"
		id="emailCheck"><div id="dropEmail"></div> 
		<br>
		<label>휴대폰</label> : <form:input path="userPhone" />
		<br>
		<br>
		<label>성별</label> 	<form:radiobutton path="userGender" value="1"/>남
							<form:radiobutton path="userGender" value="0"/>여
							

		<form:hidden path="userImg" value="star.png"/>
		
		<button type="submit" name="join">가입</button>
	</form:form>


</body>
</html>