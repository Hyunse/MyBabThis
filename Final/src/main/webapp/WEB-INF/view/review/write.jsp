<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰작성</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resource/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">
$(function(){
    //전역변수
    var obj = [];               
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "editor",
        sSkinURI: "<%=request.getContextPath()%>/resource/editor/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : false,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : false, 
        }
    });
    //전송버튼
    $("#savebutton").click(function(){
    	
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#frm").submit();
    })
})
</script>

<script>
$(document).ready(function() {
	$("#upload").click(function(){
    
	window.open("<%=request.getContextPath()%>/upload/gomyreview",
															"_blank",
															"width = 600 height = 300");

										});
					})
</script>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />

	<div style="margin-left: 10em;">
		<h2>리뷰작성</h2>
	</div>
	<c:url value="/review/writed" var="action"></c:url>
	<form:form modelAttribute="review" id="frm" method="post" action="${action }">
		<div class="table-responsive">
			<table class="table">
			<form:hidden path="resNo" />
			<form:hidden path="reviewNo" />
			<form:hidden path="userId" />
				<%-- <tr style="width: 100%">
					<th width="10%" style="text-align: center">맛집번호</th>
					<td><form:input path="resNo" readonly="true" /></td>
				</tr> 
				<tr>
					<th style="text-align: center">작성자</th>
					<td><form:input path="userId" readonly="true" /></td>
				</tr>--%>
				<tr>
					<th style="text-align: center">제목</th>
					<td><form:input path="reviewTitle" size="100%"/></td>
				</tr>
				<tr style="width:100%">
					<th style="text-align: center; width:10%" >맛평가</th>
					<td style="width:90%">&nbsp;&nbsp;&nbsp;
						<input type="radio" name="reviewScore" value="0" />0점&nbsp;&nbsp;
						<input type="radio" name="reviewScore" value="1" />1점&nbsp;&nbsp; <input
						type="radio" name="reviewScore" value="2" />2점&nbsp;&nbsp; <input
						type="radio" name="reviewScore" value="3" />3점&nbsp;&nbsp; <input
						type="radio" name="reviewScore" value="4" />4점&nbsp;&nbsp; <input
						type="radio" name="reviewScore" value="5" checked />5점 <%-- <form:radiobutton path="reviewScore" value="0"/>0
								<form:radiobutton path="reviewScore" value="1"/>1
								<form:radiobutton path="reviewScore" value="2"/>2
								<form:radiobutton path="reviewScore" value="3"/>3
								<form:radiobutton path="reviewScore" value="4"/>4
								<form:radiobutton path="reviewScore" value="5" />5
		 --%></td>
				</tr>
				
				<%-- 
				<tr>
					<th style="text-align: center">내용</th>
					<td >&nbsp;&nbsp;<textarea name="reviewContent" cols="150" rows="20"></textarea><br> <form:input path="reviewContent" />
					</td>
				</tr> --%>
				<tr>
					<th style="text-align: center">내용</th>
					<td ><textarea name="reviewContent" id="editor" rows="20" cols="150" style=" width:100%; min-width: 600px "></textarea>
					</td>
				</tr>
				<tr>
				
				<%-- <tr>
					<th style="text-align: center">이미지</th>
					<td>
						<img id="dropimg"></img> <form:input path="reviewImg"
							id="reviewImg" /> <input type="button" value="upload"
						id="upload"></td>

						<div class="col-lg-6">
							<div class="input-group" style="width: 50%">
							<img id="dropimg"></img>
								<form:input path="reviewImg" id="reviewImg"
									value="${restaurant.resImg}" type="text" class="form-control" />
								<span class="input-group-btn">

									<button type="button" class="btn btn-default" id="upload">
										<span class="glyphicon glyphicon-cloud-upload"></span> 업로드

									</button>
								</span>
							</div>
						</div>
				</tr> --%>
				<tr>
					<td colspan="2" align="center"><br>
						<button type="button" id="savebutton" class="btn btn-default" name="write">
							<span class="glyphicon glyphicon-ok"></span> 작성
						</button></td>
				</tr>
			</table>
		</div>
	</form:form>

	<script src="../js/classie_input.js"></script>
	<script>
		(
						function() {
							// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
							if (!String.prototype.trim) {
								(function() {
									// Make sure we trim BOM and NBSP
									var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
									String.prototype.trim = function() {
										return this.replace(rtrim, '');
									};
								})();
							}

							[].slice
									.call(
											document
													.querySelectorAll('input.input__field'))
									.forEach(
											function(inputEl) {
												// in case the input is already filled..
												if (inputEl.value.trim() !== '') {
													classie.add(
															inputEl.parentNode,
															'input--filled');
												}

												// events:
												inputEl.addEventListener(
														'focus', onInputFocus);
												inputEl.addEventListener(
														'blur', onInputBlur);
											});

							function onInputFocus(ev) {
								classie.add(ev.target.parentNode,
										'input--filled');
							}

							function onInputBlur(ev) {
								if (ev.target.value.trim() === '') {
									classie.remove(ev.target.parentNode,
											'input--filled');
								}
							}
						})();
	</script>

</body>
</html>