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
    
	window.open("<%=request.getContextPath()%>/upload/gomyreview","_blank", "width = 600 height = 300")

	})
})
</script>
</head>
<body>


	<h1>리뷰작성</h1>
	<c:url value="/review/write" var="action"></c:url>
	<form:form modelAttribute="review" method="post" action="${action }" >
		<label>맛집번호</label> : <form:input path="resNo" readonly="true"/>
		<br>
		<label>작성자</label> : <form:input path="userId" readonly="true"/>
		<br>
		<label>맛평가</label> : <input type="radio" name="reviewScore" value="0"/>0
		<input type="radio" name="reviewScore" value="1"/>1
		<input type="radio" name="reviewScore" value="2"/>2
		<input type="radio" name="reviewScore" value="3"/>3
		<input type="radio" name="reviewScore" value="4"/>4
		<input type="radio" name="reviewScore" value="5" checked/>5
		<%-- 
		<form:radiobutton path="reviewScore" value="0"/>0
								<form:radiobutton path="reviewScore" value="1"/>1
								<form:radiobutton path="reviewScore" value="2"/>2
								<form:radiobutton path="reviewScore" value="3"/>3
								<form:radiobutton path="reviewScore" value="4"/>4
								<form:radiobutton path="reviewScore" value="5" />5
		 --%>
		 
		<br>
		<label>이미지</label> :<img id="dropimg" ></img>
		<input type="button" value="upload" id="upload">
		<br>
		<label>내용</label> : <textarea name="reviewContent"></textarea><%-- <form:input path="reviewContent" /> --%>
		<br>
		<button type="submit" name="write">작성</button>
	</form:form>
	<script src="../js/classie_input.js"></script>
	<script>
		(function() {
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

			[].slice.call(document.querySelectorAll('input.input__field'))
					.forEach(function(inputEl) {
						// in case the input is already filled..
						if (inputEl.value.trim() !== '') {
							classie.add(inputEl.parentNode, 'input--filled');
						}

						// events:
						inputEl.addEventListener('focus', onInputFocus);
						inputEl.addEventListener('blur', onInputBlur);
					});

			function onInputFocus(ev) {
				classie.add(ev.target.parentNode, 'input--filled');
			}

			function onInputBlur(ev) {
				if (ev.target.value.trim() === '') {
					classie.remove(ev.target.parentNode, 'input--filled');
				}
			}
		})();
	</script>
	
</body>
</html>