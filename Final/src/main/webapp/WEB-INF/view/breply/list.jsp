<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Breply"%>
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
	<c:url value="/breply/write" var="url"></c:url>
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
			<th>게시글번호</th>
			<th>설명</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		
		<c:forEach items="${breplys }" var="breply">
			<tr>
				<td><c:out value="${breply.breplyNo }" /></td>
				<td><c:out value="${breply.boardNo }" /></td>
				<td><c:out value="${breply.breplyContent }" /></td>
				<td><c:out value="${breply.userId }" /></td>
				<td><c:out value="${breply.breplyUpdatedate }" /></td>
				<td>
			<c:url value="/breply/edit?breplyNo=${breply.breplyNo }" var="url"></c:url>
			<a href="${url}"><button>수정</button></a>
			</td>
				<td>
			<c:url value="/breply/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }" var="url"></c:url>
			<a href="${url}"><button>삭제</button></a>
			</td>
			

			</tr>
		</c:forEach>

	</table>
</body>
</html>