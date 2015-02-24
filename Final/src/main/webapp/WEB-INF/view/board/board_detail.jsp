<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유 게시판</title>


</head>

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


<hr>



<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<div style="margin-left: 3em;">
		<h2 style="font-family: Nanum Gothic">자유게시판</h2>
	</div>
	
	<center>
		<p id="demo"></p>
		<div class="table-responsive">
			<table class="table">
				<tr width=100%>
					<th width=10% style="text-align: center">번호</th>
					<td width=90%>${boardDetail.boardNo}</td>
				</tr>
				<tr>
					<th style="text-align: center">제목</th>
					<td>${boardDetail.boardTitle}</td>
				</tr>
				<tr>
					<th style="text-align: center">작성자</th>
					<td>${boardDetail.userId }</td>
				</tr>
				<tr>
					<th style="text-align: center">등록일</th>
					<td>
						<c:set value="${boardDetail.boardRegdate}" var="boardRegdate"/>
						<fmt:formatDate value="${boardRegdate }" type="date" dateStyle="full"/>&nbsp;&nbsp;
						<fmt:formatDate value="${boardRegdate }" type="time" pattern="hh:MM"/>
					</td>
				</tr>
				<tr>
					<th style="text-align: center">내용</th>
					<td>${boardDetail.boardContent }</td>
				</tr>

			</table>
			<c:if test="${boardDetail.userId == loginUser.userId}">
			<c:url value="/board/update?boardNo=${boardDetail.boardNo}" var="goEdit" />
		<a href="${goEdit}"><button type="button" class="btn btn-default" ><p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p></button></a>
		</c:if>
		</div>
		
	</center>
	<hr>
	<div style="margin-left: 3em;">
		<h2 style="font-family: Nanum Gothic">댓글목록</h2>
	</div>
	<table class="table" style="width:100%">
		<tr >
			<th width="5%" >번호</th>
			<!-- <th>게시글번호</th> -->
			<th width="65%">내용</th>
			<th width="15%">작성자</th>
			<th width="15%">등록일</th>
		</tr>

		<c:forEach items="${breplys }" var="breply">
			<tr>
				<td style="text-align:center"><c:out
						value="${breply.breplyNo }" /></td>
				<%-- <td><c:out value="${breply.boardNo }" /></td> --%>
				<td style="word-break: break-all;">

					<div id="hbtn${breply.breplyNo}">
						<c:out value="${breply.breplyContent }" />
					</div> <c:url value="/breply/update" var="action" /> <form:form
						modelAttribute="breply" method="post" action="${action }"
						class="updateform" id="ubtn${breply.breplyNo }">
						<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
						<form:hidden path="breplyNo" value="${breply.breplyNo }" />
						<form:hidden path="userId" value="${loginUser.userId }"
							class="droptext" id="userId" />
						<%-- <form:textarea  class="textarea" id="tbtn${breply.breplyNo}"
							rows='2' cols='50' path="breplyContent"></form:textarea>
						<button type="submit" name="breply_update" class="btn btn-default">확인</button> --%>

						<div class="col-lg-6">
							<div class="input-group">
								<form:input id="tbtn${breply.breplyNo}" type="text"
									class="form-control" path="breplyContent"></form:input>
								<span class="input-group-btn">
									<button class="btn btn-default" type="submit"
										name="breply_update"><span class="glyphicon glyphicon-ok"></span> 확인</button>
								</span>
							</div>
							<!-- /input-group -->
						</div>
						<!-- /.col-lg-6 -->
					</form:form>

				</td>
				<td style="text-align:center"><c:out
						value="${breply.userId }" /></td>
				<td style="text-align:center">
					<c:set value="${breply.breplyUpdatedate }" var="breplyUpdatedate"/>
					<fmt:formatDate value="${breplyUpdatedate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
					<fmt:formatDate value="${breplyUpdatedate }" type="time" pattern="hh:MM"/>
				</td>
						
				<c:if test="${breply.userId == loginUser.userId}">
				
					<td style="border: solid 1px #FFF; "><button
							class="btn btn-default" id="btn${breply.breplyNo}">
							<p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p>
						</button> <c:url
							value="/board/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }"
							var="url"></c:url> <a href="${url}"><button
								class="btn btn-default">
								<p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</p>
							</button></a></td>
				</c:if>
			</tr>
		</c:forEach>

	<tr><td align="center"><img width="40" height="40"
							src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
						<%-- <span>${loginUser.userId }</span> --%></td>
	<td colspan="3">
	<!-- <div style="margin-left: 3em;">
		<h2 style="font-family: Nanum Gothic">댓글작성</h2>
	</div> -->

	<c:url value="/breply/write" var="action"></c:url>
	<form:form modelAttribute="breply" method="post" action="${action }">
		<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
		<form:hidden path="userId" value="${loginUser.userId }" />
		<%--<label>내용</label> :  <form:textarea path="breplyContent" />
			<button type="submit" name="breply_write" class="btn btn-primary">작성</button> --%>

		<div class="col-lg-10">
			<div class="input-group">
				<form:input path="breplyContent" type="text" class="form-control"/>
				<span class="input-group-btn">
					&nbsp;&nbsp;<button class="btn btn-default" name="breply_write" type="submit"><span class="glyphicon glyphicon-ok"></span> 작성</button>
				</span>
			</div>
		</div>

	</form:form>

</td>
</tr>
	</table>
	<hr>
	<jsp:include page="/WEB-INF/view/footer.jsp" />

</body>
</html>