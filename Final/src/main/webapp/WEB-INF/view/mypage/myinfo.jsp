<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#myinfo_table{
width: 30%;
margin-left:35%; 
margin-right:35%;
margin-top: 50px;

}
#col1{
width: 20%;
}
#myinfo_table td{
padding-bottom: 20px;
}

</style>
<body>
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
			c.text("이메일을 반드시 입력해주세요");
		}else if(re_email.test(email.val()) != true ){
			c.text("올바른 이메일 형식이 아닙니다.");
		}else{
			c.text('적당합니다.')
		}
	})
	
/* 	패스워드 유효성 체크 */
	pass.keyup(function(){
		var c = $(this).next('strong');
		if(pass.val().length == 0){
			c.text("");
		}else if(pass.val().length < 6 ){
			c.text("너무 짧습니다.");
		}else if(pass.val().length > 18 ){
				c.text("너무 깁니다.");
		}else{
			c.text('적당합니다.')
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
        var pass = $("#userPass").val();
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
    
    $("#upload").click(function(){
    
    	window.open("<%=request.getContextPath()%>/upload/gomyuser","_blank", "width = 600 height = 300")
    
    })
    
});

</script>

<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />

	<c:url value="/mypage/myinfo" var="action"></c:url>
	<form:form modelAttribute="loginUser" method="post" action="${confirm}"  enctype="multipart/form-data" id="userform">

		<table id="myinfo_table">
			<tr>
				<td id="col1"><label>아이디</label></td>
				<td><form:input path="userId" class="form-control" readonly="true"/></td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>닉네임</label></td>
				<td><form:input path="userName" class="form-control"/></td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>비밀번호</label></td>
				<td><form:password  path="userPass" id="userPass" class="form-control"/></td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>비밀번호 확인</label></td>
				<td><input type="password" id="pass2" onblur="passchk()" class="form-control"/><div id="passCheck"></div>
					<div id="chk"></div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>E-mail</label></td>
				<td><form:input path="userEmail" id="userEmail" class="form-control"/><div id="dropEmail"></div></td>
				<td><input type="button" value="중복체크" name="emailCheck" id="emailCheck" class="btn btn-default btn-xs "></td>
			</tr>
			<tr>
				<td id="col1"><label>연락처</label></td>
				<td><form:input path="userPhone" class="form-control" /></td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>성별</label></td>
				<td>
					<form:radiobutton path="userGender" value="1" />남&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<form:radiobutton path="userGender" value="0" />여
				</td>
				<td></td>
			</tr>
			<tr>
				<td id="col1"><label>이미지</label><br>
					<img id="dropimg" width="100" height="100" src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
				</td>
				<td><form:input path="userImg" id="userimg" class="form-control"/></td>
				<td><input type="button" value="upload" id="upload" class="btn btn-default btn-xs"></td>
			</tr>
			<tr>
				<td id="col1"></td>
				<td style="text-align: center;">
				<br><br>
					<button type="submit" name="_event_update" class="btn btn-default"><p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p></button>
					<button type="submit" name="_event_delete"class="btn btn-default"><p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 탈퇴</button>
				</td>
				<td></td>
			</tr>
		</table>

		<%-- <br>
		<label>닉네임</label> : <form:input path="userName" />
		<input type="button" value="중복체크" name="nameCheck" id="nameCheck">
		<div id="dropName"></div>
		<br>
		<label>비밀번호</label> : <form:password  path="userPass" id="userPass"/>
		<br>
		<label>비밀번호확인</label> : <input type="password" id="pass2"
			onblur="passchk()" class="form-control"/><div id="passCheck"></div>
		<div id="chk"></div>
		<br>
		<label>E-mail</label> : <form:input path="userEmail" id="userEmail" />
		<input type="button" value="중복체크" name="emailCheck" id="emailCheck">
		<div id="dropEmail"></div>
		<br>
		<label>휴대폰</label> : <form:input path="userPhone"  />
		<br>
		<br>
		<label>성별</label>
		<form:radiobutton path="userGender" value="1" />남
		<form:radiobutton path="userGender" value="0" />여
		<br>
		
		<label>이미지</label>	
		<br>
		
		<img id="dropimg" width="100" height="100" src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
		<form:input path="userImg" id="userimg"/>
		<input type="button" value="upload" id="upload">
		<br>
		<br>
							
		<button type="submit" name="_event_update">수정</button>
		<button type="submit" name="_event_delete">삭제</button> --%>
	</form:form>
	
	
	


<br>
<%-- <h2>이미지 테스트</h2>
<jsp:include page="/WEB-INF/view/mypage/mypage-myimg.jsp"></jsp:include>
<div>
프로필 사진 확인 용
<img src="<%=request.getContextPath()%>/upload/${file}">
</div>
	 --%>
</body>
</html>
