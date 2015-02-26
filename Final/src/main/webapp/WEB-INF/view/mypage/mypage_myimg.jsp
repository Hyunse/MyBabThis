<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<title>이미지 업로드</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/webfont/1.4.10/webfont.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<style>
.file_input_textbox {
	margin-left:200px
}

.file_input_div {
	position: relative;
	width: 500px;
	height: 23px;
	overflow: hidden;
}

.file_input_button {
	width: 100px;
	/* left: 50%; */
	margin-left: 250px;
	position: absolute;
	top: 0px;
	background-color: #000000;
	color: #ffffff;
	border-style: solid;
}

.file_input_hidden {
	font-size: 45px;
	posision: absolute;
	right: 0px;
	top: 0px;
	opacity: 0;
}
body{
padding-top: 0;}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

$(document).ready(function() {
	
	
	
	$("#upload").click(function(){
		
		
		$("#imghere").fadeIn();

	})
	
	$("#ok").click(function(){
		
		opener.$("#userimg").val("${file}");
		opener.$("#dropimg").attr("src","<%=request.getContextPath()%>/upload/${file}");
		self.close();
	})
	$("#c").click(function(){
		
		self.close();
	})
	
})
</script>


<body>
<%-- <h2>프로필 사진</h2>
<c:url value="/upload/user" var="userimg" />
<form method="post" enctype="multipart/form-data" action="${userimg}">
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
 --%>
 
 
 
 
	<c:url value="/upload/user" var="userimg" />
	<form method="post" enctype="multipart/form-data" action="${userimg}">
		<table class="table">
			<tr>
				<td colspan="2" class="border-top-style">
					<h3>
						<strong><span class="glyphicon glyphicon-cloud-upload"></span>
							이미지 업로드</strong>
					</h3>
				</td>

			</tr>

		</table>
		
		<input type="text" id="fileName" class="file_input_textbox"
			value="사진을 업로드 해주세요" name="uploadFile" readonly="readonly">
		<div class="file_input_div">
			<input type="button" value="이미지" class="file_input_button" /> <input
				type="file" class="file_input_hidden" name="uploadFile"
				onchange="javascript: document.getElementById('fileName').value = this.value" />
		</div>
		
		
		
		<table class="table" >
			<tr >
				<td align="center" ><c:if test="${empty file}">

					</c:if> <c:if test="${!empty file }">
						<img src="<%=request.getContextPath()%>/upload/${file}"
							width="100" height="100">
					</c:if>
					
				</td>
			</tr>
			<tr>
			<td align="center" style="border-top: none;"><button  class="btn btn-default" type="submit" id="upload"><span class="glyphicon glyphicon-picture"></span> 미리보기</button></td>
			</tr>

			<tr>
				<td  align="center"><button 
					class="btn btn-default" id="ok"><span class="glyphicon glyphicon-ok"></span> 확인</button> 
					<button class="btn btn-default" id="c"><p class="text-danger"><span class="glyphicon glyphicon-remove"></span> 취소</p></button></td>
			</tr>
		</table>
	</form>
 
</body>
</html>