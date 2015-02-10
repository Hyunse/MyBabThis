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
	<script type="text/javascript">
	$(document).ready(function() {
		$("#idCheck").click(function(){
			 alert("체크");
		    var id = $('#userId').val();
		   
		    $.ajax({
		    type: "POST",
		    url: "<%=request.getContextPath()%>/join/id",
		    data: "id="+ id ,
		    contentType:"application/x-www-form-urlencoded; charset=utf-8",
		   
		    
		    success: function(args){
		    	 alert("성공" + args);
		    	$("#dropId").html(args);
		    },
		    error: function (args) {
		    	alert("오류" + args)
				console.log(path, args);
			}
		    });
		})
		$("#nameCheck").click(function(){
			 alert("체크");
		    var name = $('#userName').val();
		   
		    $.ajax({
		    type: "POST",
		    url: "<%=request.getContextPath()%>/join/name",
		    data: "name="+ name,
		    contentType:"application/x-www-form-urlencoded; charset=utf-8",
		    
		    success: function(args){
		    	
		    	 alert("성공" + args);
		    	$("#dropName").html(args);
		    },
		    error: function (args) {
		    	
		    	alert("오류" + args);
				console.log(path, args);
			}

		    });
		})
		$("#emailCheck").click(function(){
			 alert("체크");
		    var email = $('#userEmail').val();
		   
		    $.ajax({
		    type: "POST",
		    url: "<%=request.getContextPath()%>/join/email",
		    data: "email="+ email ,
		    contentType:"application/x-www-form-urlencoded; charset=utf-8",
		  
		    
		    success: function(args){
		    	 alert("성공" + args);
		    	$("#dropEmail").html(args);
		    },
		    error: function (args) {
		    	alert("오류" + args)
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
		           $("#chk").val(message2);
		           alert("비밀번호다르다.");
		        } else {
		           $("#chk").val(message3);
		           alert("비밀번호같습니다.")
		        }
		        return;
		    })
		});


	</script>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<hr>
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
	<form:form modelAttribute="loginUser" method="post" action="${confirm}">

			
			
		<label>아이디</label> : <form:input path="userId" />
		<input type="button" value="중복체크" name="idCheck" id="idCheck">
		<div id="dropId"></div>

		<br>
		<label>닉네임</label> : <form:input path="userName" />
		<input type="button" value="중복체크" name="nameCheck" id="nameCheck">
		<div id="dropName"></div>
		<br>
		<label>비밀번호</label> : <form:input path="userPass" id="pass" />
		<br>
		<label>비밀번호확인</label> : <input type="text" id="pass2"
			onblur="passchk()" />
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
							
		<button type="submit" name="_event_update">수정</button>
		<button type="submit" name="_event_delete">삭제</button>
	</form:form>

	
</body>
</html>