<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	
	$("#search").click(function(){
		alert("체크");
	    var email = $('#email').val();
	   
	    $.ajax({
	    type: "POST",
	    url: "<%=request.getContextPath()%>/email/search",
	    data: "email="+ email ,
	    contentType:"application/x-www-form-urlencoded; charset=utf-8",
	   
	    
	    success: function(args){
	    	alert(args + " 이메일을 보냈습니다.");
	    	
	    },
	    error: function (args) {
	    	alert(args + "   이메일 보내기 실패");
			console.log(path, args);
		}
	    });
	})
})
</script>
<body>
	<h1>이메일로 아이디랑 비번 찾기 페이지</h1>
	<br>
	<form>
		<input type="text" id="email" name="email"> <input type="submit" value="보내기" id="search">
	</form>
</body>
</html>