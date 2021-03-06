<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맛집 등록하기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 
<meta name="viewport" content="width=device-width, initial-scale=1"> -->

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

<style type="text/css">
.selectbox{
width: 100px;
}
.inputbox{
width:300px;}

.inputform{
width:100%;
}

</style>
</head>
<script>
$(document).ready(function() {
	$("#upload").click(function(){
    
	window.open("<%=request.getContextPath()%>/upload/gomyres",
															"_blank",
															"width = 600 height = 400")

										})
					})
</script>


<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
	<!-- <section class="content" style="text-align: center;"> -->
		
		<c:url value="/restaurant/writed" var="action"></c:url>
		<form:form modelAttribute="restaurant" method="post"
			action="${action}" class="inputform">

			<form:hidden path="userId" value="${loginUser.userId }"/>
			<div class="table-responsive">
				<table class="table" >
					<tr style="width: 100%" >
						<th width=20% style="text-align: center; min-width: 70px;">가게이름</th>
						<td width=80%>&nbsp;&nbsp;&nbsp;<form:input path="resName" id="resName" size="30%" class="inputbox"/></td>
					</tr>
					<tr>
						<th style="text-align: center">전화번호</th>
						<td>&nbsp;&nbsp;&nbsp;<form:input path="resNumber" id="resNumber" size="30%" class="inputbox"/></td>
					</tr>
					<tr>
						<th style="text-align: center">주소</th>
						<td>&nbsp;&nbsp;&nbsp;<form:input path="resLoc" id="resLoc" size="40%" class="inputbox"/></td>
					</tr>
					<tr>
						<th style="text-align: center">내용</th>
						<td><form:textarea path="resContent" id="resContent" cols="100%" rows="12%" /></td>
					</tr>


					<tr>
						<th style="text-align: center">지역</th>
						<td>&nbsp;&nbsp;&nbsp;<form:select path="locName" class="selectbox">
								<form:option value="강남">강남</form:option>
								<form:option value="건대">건대</form:option>
								<form:option value="송파">송파</form:option>
								<form:option value="대학로">대학로</form:option>
								<form:option value="신림">신림</form:option>
								<form:option value="홍대">홍대</form:option>
								<form:option value="종로">종로</form:option>
								<form:option value="영등포">영등포</form:option>
							</form:select></td>
					</tr>
					<!-- 이런식으로 리스트 불러올수있음 -->
					<%-- <form:option items="${types} }" itemLabel="name" itemValue="id"/> --%>
					<tr>
						<th style="text-align: center">맛집장르</th>
						<td>&nbsp;&nbsp;&nbsp;<form:select path="resKind" class="selectbox">
								<form:option value="한식">한식</form:option>
								<form:option value="중식">중식</form:option>
								<form:option value="양식">양식</form:option>
								<form:option value="일식">일식</form:option>
								<form:option value="분식">분식</form:option>
								<form:option value="기타">기타</form:option>
							</form:select></td>
					</tr>
					<tr>
						<%-- <th>이미지</th>
						<td>&nbsp;&nbsp;<img id="dropimg"></img> <form:input path="resImg"
								id="resImg" /><input type="button" value="upload" id="upload"></td>  --%>
								<th style="text-align: center">이미지</th>
					<td><%-- 
						<img id="dropimg"></img> <form:input path="resImg"
							id="reviewImg" /> <input type="button" value="upload"
						id="upload"><img id="dropimg"></img> <form:input path="resImg"
							id="resImg" /> <input type="button" value="upload" id="upload">--%>
						<%-- <div class="col-lg-6">
							<div class="input-group" style="width: 50%">
							<img id="dropimg"></img>
								<form:input path="resImg" id="resImg"
									value="${restaurant.resImg}" type="text" class="form-control" />
								<span class="input-group-btn"> --%>
 							&nbsp;&nbsp;&nbsp;<form:input path="resImg" id="resImg" />
									<button type="button" class="btn btn-default" id="upload">
										<span class="glyphicon glyphicon-cloud-upload"></span> 업로드

									</button>
						<!-- 		</span>
							</div>
						</div> -->
						</td>
					</tr>
					<tr align="center">
						<td colspan="2"><br><br><button type="submit" name="proceed" class="btn btn-default"> 
	<span class="glyphicon glyphicon-ok"></span> 완료</button></td>
					</tr>

				</table>
			</div>
		</form:form>
	<!-- </section> -->
<br><br>

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