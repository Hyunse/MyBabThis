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
	
	
	
	$("#upload").click(function(){
		
		
		$("#imghere").fadeIn();

	})
	
	$("#ok").click(function(){
		
		opener.$("#reviewImg").val("${file}");
		/* 
		$(opener.document).find($("reviewContent").append("${file}")); */
		opener.$("#dropimg").attr("src","<%=request.getContextPath()%>/upload/${file}");
		opener.$("#dropimg").attr("width","100");
		self.close();
	})
	$("#c").click(function(){
		
		self.close();
	})
	
})
</script>
<body>
<h2>프로필 사진</h2>
<c:url value="/upload/review" var="reviewimg" />
<form method="post" enctype="multipart/form-data" action="${reviewimg}">
	이미지 선택 : <input type="file" name="uploadFile"><button type="submit" id="upload">upload</button>
	<br>
	미리보기 :
	<c:if test="${empty file}">
	사진을 업로드 해주세요
	</c:if>
	<c:if test="${!empty file }">
	<img src="<%=request.getContextPath()%>/upload/${file}"  width="100" height="100">
	</c:if>
</form>

<input type="button" value="확인" id="ok"><input type="button" value="취소" id="c">
</body>
</html>