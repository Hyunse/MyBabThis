<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰보기</title>
</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<div style="margin-left: 10em;">
		<h2>리뷰</h2>
	</div>
	<div class="table-responsive">
		<table class="table">
			<%-- <tr style="width: 100%">
				<th width="10%" style="text-align: center">작성자</th>
				<td><c:out value="${review.userId }" /></td>
			</tr> --%>
			<tr>
				<th width="10%" style="text-align: center">등록일</th>
				<td><%-- <c:out value="${review.reviewUpdatedate }" /> --%>
					<c:set value="${review.reviewUpdatedate }" var="reviewUpdatedate"/>
					<fmt:formatDate value="${reviewUpdatedate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
					<fmt:formatDate value="${reviewUpdatedate }" type="time" dateStyle="short"/>
					</td>
			</tr>
			<tr>
				<th width="10%" style="text-align: center">맛평가</th>
				<td><c:out value="${review.reviewScore }"/>점</td>
			</tr>
			<tr>
				<th width="10%" style="text-align: center">내용</th>
				<td>${review.reviewContent}</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><br><c:url
						value="/restaurant/view?resNo=${review.resNo }" var="url"></c:url>
					<a href="${url}"><button class="btn btn-default"><span class="glyphicon glyphicon-th-list"></span> 목록</button></a> <c:url
						value="/review/edit?reviewNo=${review.reviewNo }" var="url"></c:url>
					<a href="${url}"><button class="btn btn-default"><p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p></button></a> <c:url
						value="/review/delete?reviewNo=${review.reviewNo }&resNo=${review.resNo }"
						var="url"></c:url> <a href="${url}"><button class="btn btn-default"><p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</p></button></a></td>
			</tr>
		</table>
		<br><br><br>
	</div>
</body>
</html>