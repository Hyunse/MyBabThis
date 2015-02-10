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
<script>
$(document).ready(function(){
	$("#updateform").hide();
	$(".updateBtn").click(function(){
		
		$("#writeform").hide();
		$("#updateform").show();
		
	})
	$("#writeButton").click(function(){
		
		$("#writeform").show();
		$("#updateform").hide();
	})
	
	$(".content").each(function(index){
		$("this").attr({
			"id" : "para-"+index
		});
	});
	
})
</script>
<!-- <script>
$('a[data-href]').each(function() { 
	 $(this).attr('href', $(this).attr('data-href'));
	});
</script> -->
<jsp:include page="/WEB-INF/view/header.jsp" />
<hr>
<body>
	<h2>게시글 내용</h2>
	번호 : ${boardDetail.boardNo}
	<br> 제목 : ${boardDetail.boardTitle}
	<br> 작성자 : ${boardDetail.userId }
	<br> 내용 : ${boardDetail.boardContent }
	<br>

	<c:url value="/meeting/update?boardNo=${boardDetail.boardNo}"
		var="goEdit" />
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
		<% int i = 1; %>
			<tr>
				<td ><c:out value="${breply.breplyNo }"  /></td>
				<td><c:out value="${breply.boardNo }" /></td>
				<td class="content"><c:out value="${breply.breplyContent }" /></td>
				<td ><c:out value="${breply.userId }" /></td>
				<td><c:out value="${breply.breplyUpdatedate }" /></td>
				<td>
				<%-- <c:url value="/breply/edit?breplyNo=${breply.breplyNo}" var="url"></c:url>
				<a href="${url}"><button id="updateBtn">수정</button></a> --%>
					<button class="updateBtn" id="updateBtn<%= i %>">수정</button>
				</td>
				<td><c:url
						value="/breply/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }"
						var="url"></c:url> <a href="${url}"><button>삭제</button></a></td>
			</tr>
			<% i++; %>
		</c:forEach>
	</table>
	<input type="button" id="writeButton" value="새 댓글 적기">
	<hr>
	<!-- c: if userid = loginid 
<textarea > </ > 
<button oncick= aaa(this)/> 

aaa(obj) 
$(inputTextAreaData).val( 
$(obj).parent.find(:textarea).html() 
)  -->

	<c:url value="/breply/write" var="action"></c:url>
	<form:form modelAttribute="breply" method="post" action="${action }" id="writeform">
		<h2>댓글작성</h2>
		<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
		<form:hidden path="userId" value="${loginUser.userId }" />
		<label>내용</label> : <form:textarea path="breplyContent" />
		<button type="submit" name="breply_write">작성</button>
	</form:form>

	<c:url value="/breply/update" var="action" />
	<form:form modelAttribute="breply" method="post" action="${action }" id="updateform" >
	<h2>댓글수정</h2>
		<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
		<form:hidden path="userId" value="${loginUser.userId }" />
		<label>내용</label> : <form:textarea path="breplyContent" />
		<button type="submit" name="breply_update">수정</button>
	</form:form>


	<!-- <script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.0";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div class="fb-comments" data-href="http://developers.facebook.com/docs/plugins/comments/" data-numposts="5" data-colorscheme="light"></div>
	<div id="fb-root"></div> -->

</body>
</html>