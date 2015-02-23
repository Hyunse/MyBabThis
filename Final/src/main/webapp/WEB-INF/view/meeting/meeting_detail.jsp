<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>번개모임 글쓰기</title>

</head>
<style>
pre {
	display: inline;
}
</style>

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
	$(document).ready(function() {

		
		$(".updateform").hide();

		$(".btn-default").click(function() {
			//alert(this.id); // or alert($(this).attr('id'));
			var bid = $(this).attr("id");
			var hid = "#h" + bid;
			var content = $(hid).html();

			var uid = "#u" + bid;

			var tid = "#t" + bid;

			$(tid).val(content);

			$(hid).hide();
			$(uid).show();

		});

	})
</script>

<jsp:include page="/WEB-INF/view/header.jsp" />
<hr>
<body>
	
	

	<div style=" margin-left: 5em;">
	<h2 style="font-family: Nanum Gothic">번개모임 글 내용</h2>
	</div>
	<center>
	<div class="table-responsive">
				<table class="table">
				<tr width=100% ><th width=10% style="text-align:center">번호</th><td width=90%>${boardDetail.boardNo}</td></tr>
				<tr><th style="text-align:center">제목</th><td>${boardDetail.boardTitle}</td></tr>
				<tr><th style="text-align:center">작성자</th><td>${boardDetail.userId }</td></tr>
				<tr><th style="text-align:center">내용</th><td>${boardDetail.boardContent }</td></tr>
				
			</table>
	<c:if test="${boardDetail.userId == loginUser.userId }">
	<c:url value="/meeting/update?boardNo=${boardDetail.boardNo}"
		var="goEdit" />
	
	<a href="${goEdit}"><button type="submit" class="btn btn-default" ><p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</button></a>
	</c:if>
	</div>		
	</center>
	<hr>
	<div style=" margin-left: 5em;">
	<h2 style="font-family: Nanum Gothic">댓글목록</h2>
	</div>
	<table class="table" style="table-layout: fixed">
		<tr width="100%">
			<th width="5%" >번호</th>
			<!-- <th>게시글번호</th> -->
			<th width="75%">내용</th>
			<th width="10%">작성자</th>
			<th width="10%">등록일</th>

		</tr>

		<c:forEach items="${breplys }" var="breply">
			<tr>
				<td><c:out value="${breply.breplyNo }" /></td>
				<%-- <td><c:out value="${breply.boardNo }" /></td> --%>
				<td>

					<div id="hbtn${breply.breplyNo}">
						<c:out value="${breply.breplyContent }" />
					</div> <c:url value="/meeting/update" var="action" /> <form:form
						modelAttribute="breply" method="post" action="${action }"
						class="updateform" id="ubtn${breply.breplyNo }">
						<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
						<form:hidden path="breplyNo" value="${breply.breplyNo }" />
						<form:hidden path="userId" value="${loginUser.userId }"
							class="droptext" />
						
						<div class="col-lg-6">
							<div class="input-group">
								<form:input id="tbtn${breply.breplyNo}" type="text"
									class="form-control" path="breplyContent"></form:input>
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit"
										name="breply_update">확인</button>
								</span>
							</div>
							<!-- /input-group -->
						</div>
						<!-- /.col-lg-6 -->
					</form:form>

				</td>
				<td><c:out value="${breply.userId }" /></td>
				<td><c:out value="${breply.breplyUpdatedate }" /></td>

				<td style="border: solid 1px #FFF; word-break: break-all;" ><button class="btn btn-default" id="btn${breply.breplyNo}" >
				<p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</button>
				<c:url value="/meeting/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }" var="url"></c:url> 
				<a href="${url}"><button class="btn btn-default">
				<p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</button></a></td>
			</tr>
		</c:forEach>
	</table>
	

	<hr>

	<c:url value="/meeting/write" var="action"></c:url>
	<form:form modelAttribute="breply" method="post" action="${action }"
		id="writeform">
		<div style=" margin-left: 5em;">
		<h2 style="font-family: Nanum Gothic">댓글작성</h2>
		</div>
		<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
		<form:hidden path="userId" value="${loginUser.userId }" />
		<div class="col-lg-6" >
			<div class="input-group">
				<form:input path="breplyContent" type="text" class="form-control" />
				<span class="input-group-btn">
					<button class="btn btn-default" name="breply_write" type="submit"><span class="glyphicon glyphicon-ok"></span> 작성</button>
				</span>
			</div>
			<!-- /input-group -->
		</div>
		<!-- /.col-lg-6 -->
	</form:form>
	

</body>
</html>