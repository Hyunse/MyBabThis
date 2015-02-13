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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<body>
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
    
    $("#upload").click(function(){
    
    	window.open("<%=request.getContextPath()%>/upload","_blank", "width = 600 height = 300")
    
    })
    
});

</script>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<hr>
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />
<%-- <c:url value="/main" var="main" />
	<c:url value="/admin/myinfo" var="myinfo" />
	<c:url value="/admin/users" var="users" />
	<c:url value="/admin/board" var="board" />
	<c:url value="/admin/message" var="message" />

	<table border="1">
		<tr>
			<td><a href="${myinfo}"><br>개인정보<br></a></td>
			<td><a href="${users}"><br>회원관리<br></a></td>
			<td><a href="${board}"><br>게시물관리<br></a></td>
			<td><a href="${message}"><br>쪽지함<br></a></td>
		</tr>
	</table> --%>
	<c:url value="/mypage/myinfo" var="action"></c:url>
	<form:form modelAttribute="loginUser" method="post" action="${confirm}"  enctype="multipart/form-data">

			
			
		<label>아이디</label> : <form:input path="userId" />
		<input type="button" value="중복체크" name="idCheck" id="idCheck">
		<div id="dropId"></div>

		<br>
		<label>닉네임</label> : <form:input path="userName" />
		<input type="button" value="중복체크" name="nameCheck" id="nameCheck">
		<div id="dropName"></div>
		<br>
		<label>비밀번호</label> : <form:password  path="userPass" id="pass" />
		<br>
		<label>비밀번호확인</label> : <input type="password" id="pass2"
			onblur="passchk()" /><div id="passCheck"></div>
		<div id="chk"></div>
		<br>
		<label>E-mail</label> : <form:input path="userEmail" />
		<input type="button" value="중복체크" name="emailCheck" id="emailCheck">
		<div id="dropEmail"></div>
		<br>
		<label>휴대폰</label> : <form:input path="userPhone" />
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
		<button type="submit" name="_event_delete">삭제</button>
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
