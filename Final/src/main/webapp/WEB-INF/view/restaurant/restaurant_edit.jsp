<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맛집 수정</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	$("#upload").click(function(){
    
	window.open("<%=request.getContextPath()%>
	/upload/gomyres",
															"_blank",
															"width = 600 height = 300")

										});
					});
</script>

<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<div style="margin-left: 10em;">
		<h2>맛집 정보 수정</h2>
	</div>

	<c:url value="/restaurant/edited" var="action"></c:url>
	<form:form modelAttribute="restaurant" method="post" action="${action}">
		<div class="table-responsive">
			<table class="table">
				<tr style="width: 100%">
					<th width="10%" style="text-align: center">업체명</th>
					<td width="90%"  >&nbsp;&nbsp;<form:input path="resName"
							value="${restaurant.resName }" /></td>
				</tr>
				<tr>
					<th style="text-align: center">업체번호</th>
					<td>&nbsp;&nbsp;<form:input path="resNumber"
							value="${restaurant.resNumber}" /></td>
				<tr>
					<th style="text-align: center">주소</th>
					<td>&nbsp;&nbsp;<form:input path="resLoc"
							value="${restaurant.resLoc}" size="50%"/></td>
				</tr>
				<tr>
					<th style="text-align: center">지역</th>
					<td>&nbsp; <form:select path="locName"
							value="${restaurant.locName}">
							<form:option value="건대">건대</form:option>
							<form:option value="강남">강남</form:option>
							<form:option value="송파">송파</form:option>
							<form:option value="대학로">대학로</form:option>
							<form:option value="신림">신림</form:option>
							<form:option value="홍대">홍대</form:option>
							<form:option value="신촌">신촌</form:option>
							<form:option value="종로">종로</form:option>
							<form:option value="영등포">영등포</form:option>

						</form:select>
					</td>
				</tr>

				<tr>
					<th style="text-align: center">맛집장르</th>
					<td>&nbsp;&nbsp;<form:select path="resKind"
							value="${restaurant.resKind}">
							<form:option value="한식">한식</form:option>
							<form:option value="중식">중식</form:option>
							<form:option value="양식">양식</form:option>
							<form:option value="일식">일식</form:option>
							<form:option value="분식">분식</form:option>
							<form:option value="기타">기타</form:option>

						</form:select>
					</td>
				</tr>
				<tr>
					<th style="text-align: center">내용</th>
					<td><form:textarea path="resContent"
							value="${restaurant.resContent}" cols="120%" rows="15%" /></td>
				</tr>
				<tr>
					<th style="text-align: center">이미지</th>
					<td>&nbsp; <img id="dropimg" width="100" height="100"
						src="<%=request.getContextPath()%>/upload/${restaurant.resImg}"><br>
					<%-- <form:input path="resImg" id="resImg"
							value="${restaurant.resImg}" /><input type="button"
						value="upload" id="upload"> --%>
						<div class="col-lg-6" >
			<div class="input-group" style="width:50%">
				<form:input path="resImg" id="resImg" type="text" class="form-control" value="${restaurant.resImg}" />
				<span class="input-group-btn">
					<button class="btn btn-default" value="upload" id="upload"><span class="glyphicon glyphicon-cloud-upload"></span> 업로드</button>
				</span>
			</div>
		</div>
						</td>
				</tr>
				
				<tr>
					<td colspan="2" align="center"><br>
						<button type="submit" name="proceed" class="btn btn-default">
							<span class="glyphicon glyphicon-ok"></span> 입력
						</button></td>
				</tr>
			</table>
		</div>
	</form:form>
	<br>
	<br>
</body>
</html>