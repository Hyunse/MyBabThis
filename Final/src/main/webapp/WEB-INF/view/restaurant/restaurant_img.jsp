<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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

<script type="text/javascript">
$(document).ready(function(){
	WebFont.load({

				// For google fonts
				google : {
					families : [ 'Droid Sans', 'Droid Serif' ]
				},
				// For early access or custom font
				/* custom : {
					families : [ 'Nanum Gothic' ],
					urls : [ 'http://fonts.googleapis.com/earlyaccess/nanumgothic.css' ]
				} */
				custom : {
					families : [ 'Hanna' ],
					urls : [ 'http://fonts.googleapis.com/earlyaccess/hanna.css' ]
				}

			});

	
	$("#search1").click(function(){
		alert("작동")
		var name = $('#resName').val();
		
		if(name != null){
		$.get("<%=request.getContextPath()%>/restaurant/list?resName="+name);
		$(location).attr('href',"<%=request.getContextPath()%>/restaurant/list?resName="+ name);}
});
});
</script>

<script>

$(document).ready(function() {
	
	
	
	$("#upload").click(function() {

							$("#imghere").fadeIn();

						});

						$("#ok")
								.click(
										function() {

											opener.$("#resImg").val("${file}");
											opener
													.$("#dropimg")
													.attr("src", "<%=request.getContextPath()%>/upload/${file}");
											self.close();
										});
						$("#c").click(function() {

							self.close();
						});

					});
</script>


<script type="text/javascript">
var InputImage = 
    (function loadImageFile() {
    if (window.FileReader) {
        var ImagePre; 
        var ImgReader = new window.FileReader();
        var fileType = /^(?:image\/bmp|image\/gif|image\/jpeg|image\/png|image\/x\-xwindowdump|image\/x\-portable\-bitmap)$/i; 
 
        ImgReader.onload = function (Event) {
            if (!ImagePre) {
                var newPreview = document.getElementById("imagePreview");
                ImagePre = new Image();
                ImagePre.style.width = "200px";
                ImagePre.style.height = "140px";
                newPreview.appendChild(ImagePre);
            }
            ImagePre.src = Event.target.result;
             
        };
 
        return function () {
             
            var img = document.getElementById("image").files;
            
            if (!fileType.test(img[0].type)) { 
                alert("이미지 파일을 업로드 하세요"); 
                return; 
            }
             
            ImgReader.readAsDataURL(img[0]);
        }
 
    }
             
            document.getElementById("imagePreview").src = document.getElementById("image").value;
 
       
})();
 
 
</script>




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

/* filter: alpa(opacity=0);
-ms-filter: "alpah(opacity=0)";
-khtml-opacity: 0;
-moz-opacity: 0; */
</style>
<body>



	<!-- <div id="imagePreview"></div><br>
<input id="image" type="file" onchange="InputImage();"> -->



	<%-- 	<c:url value="/upload/res" var="resimg" />
	<form method="post" enctype="multipart/form-data" action="${resimg}">
<input type=file name='file1' style='display: none;'>
<TABLE> 
<TR> 
<TD> 
<input type='text' id='file2' name="uploadFile"> 
</TD> 
<TD><img src="<%=request.getContextPath()%>/upload/${file}" name='find' id='find' border='0' onclick='document.all.file1.click(); document.all.file2.value=document.all.file1.value'> 
</TD> 
</TR> 

</TABLE>
</form>
<input type="button" value="확인" id="ok">
 --%>




	<c:url value="/upload/res" var="resimg" />
	<form method="post" enctype="multipart/form-data" action="${resimg}">
		<table class="table">
			<tr>
				<td colspan="2" class="border-top-style">
					<h3>
						<strong><span class="glyphicon glyphicon-cloud-upload"></span>
							이미지 업로드</strong>
					</h3>
				</td>

			</tr>


			<%-- <tr >
				<td ><button type="submit" id="upload">upload</button></td>
				<td ><c:if test="${empty file}">
	사진을 업로드 해주세요
	</c:if> <c:if test="${!empty file }">
						<img src="<%=request.getContextPath()%>/upload/${file}"
							width="100" height="100">
					</c:if></td>
			</tr> --%>



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
			<td align="center" style="border-top: none;"><button  class="btn btn-default" type="submit" id="upload">미리보기</button></td>
			</tr>

			<tr>
				<td  align="center"><input type="button"
					class="btn btn-default" value="확인" id="ok"> <input
					type="button" class="btn btn-default" value="취소" id="c"></td>
			</tr>
		</table>
	</form>



	<!-- ----------------------------------------------------- -->

	<%-- <c:url value="/upload/res" var="resimg" />
<form method="post" enctype="multipart/form-data" action="${resimg}">
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

	<input type="button" value="확인" id="ok">
	<input type="button" value="취소" id="c"> --%>
</body>
</html>