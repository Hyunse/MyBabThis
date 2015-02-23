<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div style=" margin-left: 3em;">
	<h2 style="font-family: Nanum Gothic">자유게시판</h2>
	</div>
	<center>
	<p id="demo"></p>
	번호 : ${boardDetail.boardNo} 
	<br> 제목 : ${boardDetail.boardTitle}
	<br> 작성자 : ${boardDetail.userId }
	<br> 내용 : ${boardDetail.boardContent }
	<br>

	<c:url value="/board/update?boardNo=${boardDetail.boardNo}"
		var="goEdit" />
	<a href="${goEdit}"><button type="button" class="btn btn-default">수정</button></a>
	</center>
	<hr>
	<div style=" margin-left: 3em;">
	<h2 style="font-family: Nanum Gothic">댓글목록</h2>
	</div>
	<table class="table" style=table-layout:fixed>
		<tr>
			<th>번호</th>
			<!-- <th>게시글번호</th> -->
			<th>내용</th>
			<th>작성자</th>
			<th>등록일</th>

		</tr>

		<c:forEach items="${breplys }" var="breply">
			<tr>
				<td style="word-break: break-all;" width="30px"><c:out value="${breply.breplyNo }" /></td>
				<%-- <td><c:out value="${breply.boardNo }" /></td> --%>
				<td style="word-break: break-all;" width="100px">

					<div id="hbtn${breply.breplyNo}">
						<c:out value="${breply.breplyContent }" />
					</div> <c:url value="/breply/update" var="action" /> <form:form
						modelAttribute="breply" method="post" action="${action }"
						class="updateform" id="ubtn${breply.breplyNo }">
						<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
						<form:hidden path="breplyNo" value="${breply.breplyNo }" />
						<form:hidden path="userId" value="${loginUser.userId }" class="droptext" id="userId"/>
						 <%-- <form:textarea  class="textarea" id="tbtn${breply.breplyNo}"
							rows='2' cols='50' path="breplyContent"></form:textarea>
						<button type="submit" name="breply_update" class="btn btn-default">확인</button> --%>
						
							<div class="col-lg-6">
								<div class="input-group">
									<form:input id="tbtn${breply.breplyNo}" type="text" class="form-control" path="breplyContent"></form:input> 
										<span class="input-group-btn" >
										<button class="btn btn-default" type="submit" name="breply_update">확인</button>
									</span>
								</div>
								<!-- /input-group -->
							</div>
							<!-- /.col-lg-6 -->
							</div>
							<!-- /.row -->
						</form:form>

				</td>
				<td style="word-break: break-all;" width="40px"><c:out value="${breply.userId }" /></td>
				<td style="word-break: break-all;"  width="40px"><c:out value="${breply.breplyUpdatedate }" /></td>
				<c:if test="${!empty loginUser.userId}">
				<td style="border:solid 1px #FFF; word-break: break-all;"><button class="btn btn-default" id="btn${breply.breplyNo}"><p class="text-success">수정</p></button>
				<c:url
						value="/board/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }"
						var="url"></c:url> <a href="${url}"><button class="btn btn-default" ><p class="text-danger">삭제</p></button></a></td>
				</c:if>
			</tr>
		</c:forEach>
	</table>
	
	<hr>
		<div style=" margin-left: 3em;">
		<h2 style="font-family: Nanum Gothic">댓글작성</h2>
		</div>
		
		<c:url value="/breply/write" var="action"></c:url>
		<form:form modelAttribute="breply" method="post" action="${action }">
			<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
			<form:hidden path="userId" value="${loginUser.userId }" />
			<%--<label>내용</label> :  <form:textarea path="breplyContent" />
			<button type="submit" name="breply_write" class="btn btn-primary">작성</button> --%>
		
			<div class="col-lg-6">
				<div class="input-group">
					<form:input  path="breplyContent" type="text" class="form-control"/> <span
						class="input-group-btn">
						<button class="btn btn-default" name="breply_write"  type="button">작성</button>
					</span>
				</div>
				<!-- /input-group -->
			</div>
			<!-- /.col-lg-6 -->
		
		</form:form>
		
		
		
		

</body>
</html>