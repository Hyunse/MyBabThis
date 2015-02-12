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
<body>
	<h1>이메일로 아이디랑 비번 찾기 페이지</h1>
	<br>

	<input type="text" id="email" name="email">
	<input type="button" id="go" value="submit">

	<div id="drophere"></div>

</body>
</html>