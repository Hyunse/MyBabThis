<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function() {
	function ab(){
		alert("aa");
		
	};
})
</script>
</head>
<body>
aaaaaaaaaa
	<br><br>
	<c:url value="/review/write" var="url"></c:url> 
	<a href="${url }"><button>리뷰작성</button></a> 
	<hr>
	<br><br>
	<br><br>
	<h2>맛집페이지</h2>
	<br><br>
	<br><br>
	<hr>
	<h2>리뷰목록</h2>
	<table border="1">
		<tr>
			<th>사진</th>
			<th>상호명</th>
			<th>설명2</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
		
		<c:forEach items="${reviews }" var="review">
			<tr>
				<td>등록된 사진이 없습니다.</td>
				<td><c:out value="${review.resNo }" /></td>
				<c:url value="/review/detail?reviewNo=${review.reviewNo }" var="url"></c:url> 
				<td><a id="icont" href="${url }">
				<%-- 
				<c:out value="${review.reviewContent }" /> --%>
				${ review.reviewContent}
				</a></td>
				<td><c:out value="${review.userId }" /></td>
				<td><c:out value="${review.reviewUpdatedate }" /></td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>