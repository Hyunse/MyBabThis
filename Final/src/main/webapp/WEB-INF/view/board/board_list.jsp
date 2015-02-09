<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}
</style>
</head>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-2.1.3.js"></script>

<jsp:include page="/WEB-INF/view/header.jsp" />
<body>

	<table border="1px solid black" align="center">
		<tr>
			<th width="10%">글 번호</th>
			<th width="40%">글 내용</th>
			<th width="30%">작성자</th>
			<th width="20%">날짜</th>
		</tr>
		
		
		
		<c:if test="${empty boardList}">
		<tr>
			<td colspan="4">작성 된 글이 없습니다...</td>
			
		</c:if>
		<c:if test="${!empty boardList}">
		<c:forEach var= "boardList" items="${boardList}" varStatus="status">
		
		<tr>
			<td> <c:out value="${boardList.boardNo}"/> </td>
			<td> <c:url value= "/board/detail?boardNo=${boardList.boardNo}" var="go"/> 
			     <a href="${go}"><c:out value="${boardList.boardTitle}"/> </a>
			<!-- 
			<c:if test="${fn:length(boardList.boardTitle) > 20 }">
			<a href="${go}"><c:out value ="${fn:substring(boardList.boardTitle,0,15)}" />...</a>
			</c:if>
			
			<c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				<a href="${go}">${boardList.boardTitle}</a>
			</c:if>
			 -->
			</td>
			
			<td> <c:out value="${boardList.userId}"/></td>
			<td> <c:out value="${boardList.boardRegdate}"/></td>
		</tr>
		</c:forEach>
		</c:if>
		
	</table>
	<c:url value= "/board/write" var="write"/> 
	<a href="${write}"><button type="submit">글쓰기</button></a>
	
</body>
</html>