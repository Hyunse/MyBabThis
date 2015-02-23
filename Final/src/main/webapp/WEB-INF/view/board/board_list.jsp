<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 
<script>
	$(function() {
		$(".menu").menu();
	});
</script> -->


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
			<th width="10%">날짜</th>
		</tr>



		<c:if test="${empty boardList}">
			<tr>
				<td colspan="4">작성 된 글이 없습니다...</td>
		</c:if>
		<c:if test="${!empty boardList}">
			<c:forEach var="boardList" items="${boardList}" varStatus="status">

				<tr>
					<td style="text-align:center"><c:out value="${boardList.boardNo}" /></td>
					<td><c:url value="/board/detail?boardNo=${boardList.boardNo}"
							var="go" /> <a href="${go}"><c:out
								value="${boardList.boardTitle}" /> </a> <!-- 
			<c:if test="${fn:length(boardList.boardTitle) > 20 }">
			<a href="${go}"><c:out value ="${fn:substring(boardList.boardTitle,0,15)}" />...</a>
			</c:if>
			
			<c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				<a href="${go}">${boardList.boardTitle}</a>
			</c:if>
			 --></td>
					<td style="text-align:center"><c:out value="${boardList.userId}" />
						<%-- <ul class="menu">
							
									<li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${boardList.userId}">쪽지보내기</a></li>
								
						</ul> --%>
					</td>
					<td style="text-align:center"><c:out value="${boardList.boardRegdate}" /></td>
				</tr>
			</c:forEach>
		</c:if>
		<tr>
		<td></td>
		<td><div id="pageNumber" align="center">
	
				<c:forEach var="i" begin="1" end="${totalPage}" >
					<c:url value="/board/list?page=${i}" var="goPage"/>
						
							 <a href="${goPage}">${i}</a>
				</c:forEach>
		
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
