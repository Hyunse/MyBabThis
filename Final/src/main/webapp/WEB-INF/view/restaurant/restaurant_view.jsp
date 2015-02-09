<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp"/>
<hr>

<h1>맛집 페이지</h1>
<table border="1">
<tr><th>맛집 번호</th><th>업체명</th><th>전화번호</th><th></th><th>비고</th>
<tr>
<td><c:out value="${restaurant.resNo}"/></td>
<td><c:out value="${restaurant.locName}"/></td>
<td><c:out value="${restaurant.resName}"/></td>
<td><c:out value="${restaurant.resContent}"/></td>
<td>
<c:url value="/restaurant/edit?resNo=${restaurant.resNo}" var="url"/>
<a href ="${url }"><button>편집</button></a>
<c:url value="/restaurant/delete?resNo=${restaurant.resNo}" var="url"/>
<a href ="${url }"><button>삭제</button></a>
</td></tr>
</table>

<hr>
	<h1>리뷰목록</h1>
	<table border="1">
		<tr>
			<th>사진</th>
			<th>상호명</th>
			<th>설명</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
		
		<c:forEach items="${reviews }" var="review">
			<tr>
				<td>등록된 사진이 없습니다.</td>
				<td><c:out value="${review.resNo }" /></td>
				<c:url value="/review/detail?reviewNo=${review.reviewNo }" var="url"></c:url> 
				<td><a href="${url }"><c:out value="${review.reviewContent }" /></a></td>
				<td><c:out value="${review.userId }" /></td>
				<td><c:out value="${review.reviewUpdatedate }" /></td>
			</tr>
		</c:forEach>
		
	</table>
	<c:url value="/review/write?userId=${loginUser.userId }&resNo=${resNo }" var="url"></c:url> 
	<a href="${url }"><button>리뷰작성</button></a> 


</body>
</html>