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
    alert("id : "+ id);
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/id",
    data: "id="+ id ,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    success: function(args){
    	$("#drophere").html(args);
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

/* 	    var updateErrorMessage = function() {
        document.querySelector("#error").innerHTML = password1.validationMessage;
    };
     */
   /*  
    password1.addEventListener('change', checkPasswordValidity, false);
    password2.addEventListener('change', checkPasswordValidity, false);

    
    var form = document.getElementById('form');
    form.addEventListener('submit', function() {
    	if($("#checked").val()==""){
			alert("중복체크 해주세요.");
			event.preventDefault();
		}
        checkPasswordValidity();
        if (!this.checkValidity()) {
            event.preventDefault();
           // updateErrorMessage();
            password1.focus();
        }else{
        	 password1.setCustomValidity('');
        }
    }, false); */
});

</script>
<body>
	<c:url value="/join/confirm" var="action"></c:url>
	<form:form modelAttribute="Users" method="post" action="${action}">

		<label>아이디</label> : <form:input path="userId" /><a href="<%=request.getContextPath()%>/id">
		<input type="button" value="중복체크" name="idCheck"
		id="idCheck"></a><div id="drophere"></div> <!-- 중복체크는 나중에 -->

		<br>
		<label>닉네임</label> : <form:input path="userName" />
		<br>
		<label>비밀번호</label> : <form:input path="userPass" id="pass" />
		<br>
		<label>비밀번호확인</label> : <%-- <form:input path="userPass" id="pass2"  /> --%>
		<br>
		<label>E-mail</label> : <form:input path="userEmail" />
		<br>
		<label>휴대폰</label> : <form:input path="userPhone" />
		<br>
		<br>
		<label>성별</label> 	<form:radiobutton path="userGender" value="1"/>남
							<form:radiobutton path="userGender" value="0"/>여
							

		<button type="submit" name="가입">가입</button>
	</form:form>


</body>
</html>