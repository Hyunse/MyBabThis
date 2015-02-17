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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="css/default_modal.css" />
<link rel="stylesheet" type="text/css" href="css/component_modal.css" />
		
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css" media="screen"
	type="text/css" />
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$(".menu").menu();
	});
</script>
<style>
.ui-menu {
	width: 150px;
}
</style>
</head>



<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery-2.1.3.js"></script>

<div class="sticky">
	<jsp:include page="/WEB-INF/view/header.jsp" />
</div>
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
			<td> <c:url value= "/meeting/detail?boardNo=${boardList.boardNo}" var="go"/> 
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
			<td>
						<ul class="menu">
							<li><c:out value="${boardList.userId}" />
								<ul>
									<li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${boardList.userId}">쪽지보내기</a></li>
								</ul>
							</li>
						</ul>
					</td>
			<td> <c:out value="${boardList.boardRegdate}"/></td>
		</tr>
		</c:forEach>
		</c:if>
		
	</table>
	<br>
	<c:url value= "/meeting/write" var="write" /> 
	<a href="${write}" ><button type="submit" class="btn btn-primary" style="float: right; margin-right: 11em;" >글등록</button></a>
	
</body>
</html>