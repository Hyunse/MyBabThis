<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>


<jsp:include page="/WEB-INF/view/header.jsp" />
<hr>
<body>
<h2>게시글 내용</h2>
번호 :  ${boardDetail.boardNo} <br>
제목 : ${boardDetail.boardTitle} <br>
작성자 : ${boardDetail.userId } <br>
내용 : ${boardDetail.boardContent } <br>

<c:url value= "/meeting/update?boardNo=${boardDetail.boardNo}" var="goEdit"/> 
<a href="${goEdit}"><button type="submit">수정</button></a>

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
				<td id="d"><c:out value="${breply.breplyNo }"/></td>
				<td><c:out value="${breply.boardNo }" /></td>
				<td><c:out value="${breply.breplyContent }" /></td>
				<td><c:out value="${breply.userId }" /></td>
				<td><c:out value="${breply.breplyUpdatedate }" /></td>
				<td>
<%-- 			<c:url value="/breply/edit?breplyNo=${breply.breplyNo }" var="url"></c:url>
			<a href="${url}"><button>수정</button></a> --%>
			<button id="updateBtn">수정</button>
			</td>
				<td>
			<c:url value="/breply/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }" var="url"></c:url>
			<a href="${url}"><button>삭제</button></a>
			</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<h2>댓글작성</h2>
	<c:url value="/breply/write" var="action"></c:url>
	<form:form modelAttribute="breply" method="post" action="${action }" >
		<form:hidden path="boardNo" value="${boardDetail.boardNo }"/>
		<form:hidden path="userId" value="${loginUser.userId }"/>
		<label>내용</label> : <form:textarea path="breplyContent"/>
		<button type="submit" name="breply_write">작성</button>
	</form:form>
	
	<h2>댓글수정</h2>
	<c:url value="/breply/update" var="action"/>	
	<form:form modelAttribute="breply" method="post" action="${action }">
		<form:hidden path="boardNo" value="${boardDetail.boardNo }"/>
		<form:hidden path="userId" value="${loginUser.userId }"/>
		<label>내용</label> : <form:textarea path="breplyContent"/>
		<button type="submit" name="breply_update">수정</button>
	</form:form>
	
</body>
</html>