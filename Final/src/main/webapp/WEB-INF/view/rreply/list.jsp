<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Rreply"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br>
	<br>
	<c:url value="/rreply/write" var="url"></c:url>
	<a href="${url }"><button>댓글작성</button></a>
	<hr>
	<br>
	<br>
	<br>
	<br>
	<h2>맛집페이지</h2>
	<br>
	<br>
	<br>
	<br>
	<hr>
	<h2>댓글목록</h2>
	<table border="1">
		<tr>
		    <th>댓글번호</th>
			<th>상호명</th>
			<th>설명</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach items="${rreplys }" var="rreply">
			<tr>
				<td><c:out value="${rreply.rreplyNo }" /></td>
				<td><c:out value="${rreply.resNo }" /></td>
				<td><c:out value="${rreply.rreplyContent }" /></td>
				<td><c:out value="${rreply.userId }" /></td>
				<td><c:out value="${rreply.rreplyUpdatedate }" /></td>
				<td>
			<c:url value="/rreply/edit?rreplyNo=${rreply.rreplyNo }" var="url"></c:url>
			<a href="${url}"><button>수정</button></a>
			</td>
				<td>
			<c:url value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }" var="url"></c:url>
			<a href="${url}"><button>삭제</button></a>
			</td>
			

			</tr>
		</c:forEach>

	</table>
</body>
</html>