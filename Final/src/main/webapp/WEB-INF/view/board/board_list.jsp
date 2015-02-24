<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<!-- 
<script>
	$(function() {
		$("#dropmenu").menu();
	});
</script>

 -->
<style>
.ui-menu {
	width: 150px;
}
</style>
</head>

<jsp:include page="/WEB-INF/view/header.jsp" />
<body>

	<table class="table"  align="center">
		<tr>
			<th width="5%">글 번호</th>
			<th width="75%">글 내용</th>
			<th width="10%">작성자</th>
			<th width="10%">작성일</th>
		</tr>

		<c:if test="${empty boardList}">
			<tr>
				<td colspan="4">작성 된 글이 없습니다...</td>
		</c:if>
		<c:if test="${!empty boardList}">
			<c:forEach var="boardList" items="${boardList}" varStatus="status">
			<c:url value="/board/detail?boardNo=${boardList.boardNo}" var="url" />
				<tr onclick="location.href='${url}'" style="cursor: pointer;">
					<td style="text-align:center">
						<c:out value="${boardList.boardNo}" />
					</td>
					<td> 
						<c:out value="${boardList.boardTitle}" />
			<!-- <c:if test="${fn:length(boardList.boardTitle) > 20 }">
			<a href="${go}"><c:out value ="${fn:substring(boardList.boardTitle,0,15)}" />...</a>
			</c:if>
			
			<c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				<a href="${go}">${boardList.boardTitle}</a>
			</c:if>
			 --></td>
					<td style="text-align:center"><c:out value="${boardList.userId}" />
					<div class="dropdown" onclick="location.href='#'">
							<!-- Link or button to toggle dropdown -->
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Another action</a></li>
							</ul>
</div>
						<%-- <ul id="dropmenu">
							
									<li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${boardList.userId}">쪽지보내기</a></li>
								
						</ul> --%>
					</td>
					<td style="text-align:center">
						<c:set value="${boardList.boardRegdate}" var="boardRegdate"/>
						<fmt:formatDate value="${boardRegdate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
						<fmt:formatDate value="${boardRegdate }" type="time" pattern="hh:MM"/>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<tr>
		<td></td>
		<td>
			<div id="pageNumber" align="center">
			<ul class="pager">
				<c:forEach var="i" begin="1" end="${totalPage}" >
					<c:url value="/meeting/list?page=${i}" var="goPage"/>
						<ul class="pagination">
							<c:if test="${currentPage == i}">
							 <li class="active"><a href="#">${i}<span class="sr-only">(current)</span></a></li>
							 </c:if>
							 <c:if test="${currentPage != i}">
							 <li><a href="${goPage}">${i}</a></li>
							 </c:if>
						</ul>
				</c:forEach>
			</ul>
			</div></td>
		<td></td>
		<td style="text-align:center">
	<c:url value="/board/write" var="write" />
	<a href="${write}"><button type="submit" class="btn btn-default"><p class="text-primary"><span class="glyphicon glyphicon-pencil"></span> 글쓰기</p></button></a>
		
		</td>
		</tr>
			

	</table>
	












</body>
</html>
