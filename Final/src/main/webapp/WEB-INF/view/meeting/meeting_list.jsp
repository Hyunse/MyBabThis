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
<!-- 
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css"> -->
	
	<!-- 
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script> -->

<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- <script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="css/default_modal.css" />
<link rel="stylesheet" type="text/css" href="css/component_modal.css" /> -->
		
<!-- <script>
	$(function() {
		$(".menu").menu();
	});
</script> -->
<style>
.ui-menu {
	width: 150px;
}
#pageNumber{
	font-size: 30px;
}

</style>
</head>




<div class="sticky">
	<jsp:include page="/WEB-INF/view/header.jsp" />
</div>
<body>
	<table class="table" align="center" width="100%">
		
		<tr>
	
			<th width="5%">번호</th>
			<th width="75%">제목</th>
			<th width="10%">작성자</th>
			<th width="10%">등록일</th>
		
		</tr>
		
		
		
		<c:if test="${empty boardList}">
		<tr>
			<td colspan="4">작성 된 글이 없습니다...</td>
		</tr>
		</c:if>
		<c:if test="${!empty boardList}">
		<c:forEach var= "boardList" items="${boardList}" varStatus="status">
		
		<tr>
			<td style="text-align:center"> <c:out value="${boardList.boardNo}"/> </td>
			<td> <c:url value= "/meeting/detail?boardNo=${boardList.boardNo}" var="go"/> 
			    
		 
			<c:if test="${fn:length(boardList.boardTitle) > 20 }">
			<a href="${go}"><c:out value ="${fn:substring(boardList.boardTitle,0,15)}" />...</a>
			</c:if>
			
			<c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				<a href="${go}">${boardList.boardTitle}</a>
			</c:if>
	
			</td>
			<td style="text-align:center">
				<c:out value="${boardList.userId}" />
					<%-- 	<ul class="menu">
							<li><c:out value="${boardList.userId}" />
								<ul>
									<li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${boardList.userId}">쪽지보내기</a></li>
								</ul>
							</li>
						</ul>
					</td> --%>
			<td> <c:out value="${boardList.boardRegdate}"/></td>
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
						
							 <li><a href="${goPage}">${i}</li></a>
				</c:forEach>
			</ul>
			</div>
			
	<!-- 		
	<ul class="pager">
  <li><a href="#">Previous</a></li>
	
	<ul class="pagination">
  <li class="disabled"><a href="#">«</a></li>
  <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
  ...
</ul> -->
			
		</td>
		<td>
		</td>
		<td style="text-align:center">
			<c:url value= "/meeting/write" var="write" />
			<a href="${write}" >
				<button type="submit" class="btn btn-default">
					<p class="text-primary">
						<span class="glyphicon glyphicon-pencil"></span> 글쓰기
					</p></button></a>
		</td>
		</tr>
		
	</table>
	<br>
	
	<%-- <article> 
	
	<%
 	out.print("<");
 	for (int i = 0; i <  ${totalPage}; i++) {
 		
 %> 
 <a href="/blogproject/board/main.jsp?pageNum=<%=i + 1%>"><%=i + 1%></a>
	<%
		}
		out.print(">");
	%> </article> --%>
	<%-- <c:url value= "/meeting/write" var="write" /> 
	<a href="${write}" ><button type="submit" class="btn btn-primary" style="float: right; margin-right: 11em;" >글등록</button></a> --%>
	
</body>
</html>