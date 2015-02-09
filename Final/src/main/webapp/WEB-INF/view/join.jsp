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
	 alert("체크");
    var id = $('#userId').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/join",
    data: "id="+ id ,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    success: function(args){
    	 alert("성공" + args);
    	$("#dropId").html(args);
    }
    });
})
$("#nameCheck").click(function(){
	 alert("체크");
    var name = $('#userName').val();
   
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/join",
    data: "name="+ name ,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    success: function(args){
    	 alert("성공" + args);
    	$("#dropName").html(args);
    }
    });
})
	
    var password1 = document.getElementById('pass');
    var password2 = document.getElementById('pass2');

    var checkPasswordValidity = function() {
        if (password1.value != password2.value) {
            password1.setCustomValidity('비밀번호와 확인 비밀번호가 일치하지 않습니다.');
        } else {
            password1.setCustomValidity('');
        }        
    };
    function passchk(){
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
           $("#chk").val(message2);
           alert("비밀번호다르다.");
        } else {
           $("#chk").val(message3);
           alert("비밀번호같습니다.")
        }
        return;
    }
});

</script>
<body>
	<c:url value="/join/confirm" var="confirm" />
	<c:url value="/join" var="id" />
	<c:url value="/join" var="name" />
	<form:form modelAttribute="Users" method="post" action="${confirm}">

		<label>아이디</label> : <form:input path="userId" /><a href="${id}">
		<input type="button" value="중복체크" name="idCheck"
		id="idCheck"></a><div id="dropId"></div> 

		<br>
		<label>닉네임</label> : <form:input path="userName" /><a href="${name}">
		<input type="button" value="중복체크" name="nameCheck"
		id="nameCheck"></a><div id="dropName"></div> 
		<br>
		<label>비밀번호</label> : <form:input path="userPass" id="pass" />
		<br>
		<label>비밀번호확인</label> : <form:input path="userPass" id="pass2" onblur = "passchk()"  /> 
		<br>
		<label>E-mail</label> : <form:input path="userEmail" />
		<br>
		<label>휴대폰</label> : <form:input path="userPhone" />
		<br>
		<br>
		<label>성별</label> 	<form:radiobutton path="userGender" value="1"/>남
							<form:radiobutton path="userGender" value="0"/>여
							

		<button type="submit" name="join">가입</button>
	</form:form>


</body>
</html>