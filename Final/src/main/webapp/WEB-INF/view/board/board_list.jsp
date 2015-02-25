<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
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
<style>
.ui-menu {
	width: 150px;
}
</style>
</head>

<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
	<div style="margin-left: 10em;">
		<h3 align="left">자유게시판</h3>
	</div>

	<table class="table table-hover" style="text-align:center; width: 100% ">
		<tr>
			<th width="10%">번호</th>
			<th width="60%">제목</th>
			<th width="15%">작성자</th>
			<th width="15%">등록일</th>
		</tr>

		<c:if test="${empty boardList}">
			<tr>
				<td colspan="4">작성 된 글이 없습니다...</td>
		</c:if>
		<c:if test="${!empty boardList}">
			<c:forEach var="boardList" items="${boardList}" varStatus="status">
			<c:url value="/board/detail?boardNo=${boardList.boardNo}" var="url" />
				<tr>
					<td onclick="location.href='${url}'" style="cursor: pointer;">
						<c:out value="${boardList.boardNo}" />
					</td>
					<td onclick="location.href='${url}'" style="cursor: pointer; text-align: left;"> 
						<c:out value="${boardList.boardTitle}" />
			<!-- <c:if test="${fn:length(boardList.boardTitle) > 20 }">
			<a href="${go}"><c:out value ="${fn:substring(boardList.boardTitle,0,15)}" />...</a>
			</c:if>
			
			<c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				<a href="${go}">${boardList.boardTitle}</a>
			</c:if>
			 --></td>
					<td>
							<div class="btn-group">
                                    <button type="button" class="btn btn-default dropup-toggle" data-toggle="dropdown">
                                       <c:out value="${boardList.userId}" />&nbsp;&nbsp;<span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                       <li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
                                       <li><a href="/Final/msg/send?receiver=${boardList.userId}">쪽지보내기</a></li>
                                    </ul>
                              </div> 					
					</td>
					<td onclick="location.href='${url}'" style="cursor: pointer;">
						<c:set value="${boardList.boardRegdate}" var="boardRegdate"/>
						<fmt:formatDate value="${boardRegdate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
						<fmt:formatDate value="${boardRegdate }" type="time" dateStyle="short"/>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		</table>
		<table class="table"  align="center">
		<tr>
		<td style="width: 90%;">
			<div id="pageNumber" align="center">
			<ul class="pager">
				<c:forEach var="i" begin="1" end="${totalPage}" >
					<c:url value="/board/list?page=${i}" var="goPage"/>
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
			</div>
		</td>
		<td style="width: 10%;">
	<c:url value="/board/write" var="write" />
	<a href="${write}"><button type="submit" class="btn btn-default"><p class="text-primary">
	<span class="glyphicon glyphicon-pencil"></span> 글쓰기</p></button></a>
		</td>
		</tr>
			

	</table>
	












</body>
</html>
