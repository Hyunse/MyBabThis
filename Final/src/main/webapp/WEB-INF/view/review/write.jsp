<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰작성</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>

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
	<c:url value="/review/write" var="action"></c:url>
	<form:form modelAttribute="review" method="post" action="${action }">
		<div class="table-responsive">
			<table class="table">
				<%-- <tr style="width: 100%">
					<th width="10%" style="text-align: center">맛집번호</th>
					<td><form:input path="resNo" readonly="true" /></td>
				</tr> 
				<tr>
					<th style="text-align: center">작성자</th>
					<td><form:input path="userId" readonly="true" /></td>
				</tr>--%>
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
				<tr>
					<th style="text-align: center">이미지</th>
					<td>
						<%-- <img id="dropimg"></img> <form:input path="reviewImg"
							id="reviewImg" /> <input type="button" value="upload"
						id="upload"></td> --%>

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
				</tr>

				<tr>
					<th style="text-align: center">내용</th>
					<td>&nbsp;&nbsp;<textarea name="reviewContent"></textarea> <%-- <form:input path="reviewContent" /> --%>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br>
						<button type="submit" class="btn btn-default" name="write">
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