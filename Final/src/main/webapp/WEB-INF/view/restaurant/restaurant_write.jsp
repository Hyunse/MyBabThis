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



<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Text Input Effects</title>
<meta name="description"
	content="Simple ideas for enhancing text input interactions" />
<meta name="keywords"
	content="input, text, effect, focus, transition, interaction, inspiration, web design" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize_input.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo_input.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/component_input.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>	
</head>
<script>
$(document).ready(function() {
	$("#upload").click(function(){
    
	window.open("<%=request.getContextPath()%>/upload/gomyres","_blank", "width = 600 height = 300")

	})
})
</script>
<body>
<section class="content" style="text-align: center;">
<c:url value="/restaurant/writed" var="action"></c:url>
	<form:form modelAttribute="restaurant" method="post" action="${action}">

			<span class="input input--hoshi"> 
			<form:input class="input__field input__field--hoshi" path="userId" id="userId" value="${loginUser.userId }" readonly="true"/>
				<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="userId">
				<span class="input__label-content input__label-content--hoshi">아이디</span></label></span>
				<br>
				
			<span class="input input--hoshi"> 
			<form:input class="input__field input__field--hoshi" path="resName" id="resName"/>
				<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="resName">
				<span class="input__label-content input__label-content--hoshi">가게이름</span></label></span>
				<br>
				
				<span class="input input--hoshi"> 
			<form:input class="input__field input__field--hoshi" path="resNumber" id="resNumber"/>
				<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="resNumber">
				<span class="input__label-content input__label-content--hoshi">전화번호</span></label></span>
				<br>
				
				<span class="input input--hoshi"> 
			<form:input class="input__field input__field--hoshi" path="resLoc" id="resLoc"/>
				<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="resLoc">
				<span class="input__label-content input__label-content--hoshi">주소</span></label></span>
				<br>
				
				<span class="input input--hoshi"> 
			<form:input class="input__field input__field--hoshi" path="resContent" id="resContent"/>
				<label class="input__label input__label--hoshi input__label--hoshi-color-2" for="resContent">
				<span class="input__label-content input__label-content--hoshi">내용</span></label></span>
				<br>


		<br>
		<label>지역</label> : <form:select path="locName">
		<form:option value="강남">강남</form:option>
		<form:option value="건대">건대</form:option><form:option value="송파">송파</form:option>
		<form:option value="대학로">대학로</form:option>
		<form:option value="신림">신림</form:option>
		<form:option value="홍대">홍대</form:option>
		<form:option value="종로">종로</form:option>
		<form:option value="영등포">영등포</form:option>
		</form:select>
		<br>
		<!-- 이런식으로 리스트 불러올수있음 -->
		<%-- <form:option items="${types} }" itemLabel="name" itemValue="id"/> --%>
		<label>맛집장르</label> : <form:select path="resKind">
		<form:option value="한식">한식</form:option>
		<form:option value="중식">중식</form:option>
		<form:option value="양식">양식</form:option>
		<form:option value="일식">일식</form:option>
		<form:option value="분식">분식</form:option>
		<form:option value="기타">기타</form:option>
		</form:select>
		<br>
		
		<label>이미지</label> :<img id="dropimg"></img> <form:input path="resImg" id="resImg"/>
		<input type="button" value="upload" id="upload">
		<br>
		<br>
	<button type="submit" name="proceed">입력</button>
	</form:form>
	</section>
	
	
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