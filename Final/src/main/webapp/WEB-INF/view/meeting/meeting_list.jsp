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
<title>번개게시판</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<style>
.ui-menu {
	width: 150px;
}
/* #pageNumber{
	font-size: 30px;
} */
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$(".modal1").click(function(){
	var bid = $(this).attr("id");
	var uid = "#u" + bid;
	
	var receiver = $(uid).html();
	
	$("#dropId").html(receiver);	

	$("#receiver").val(receiver);
	})


$("#submitMsg").click(function(){
var sender = $('#sender').val(), 
	 receiver =  $('#receiver').val(), 
	 content =  $('#msgContent').val();
var data ={ sender : sender , receiver : receiver, content : content}

$.ajax({
type: "POST",
url: "<%=request.getContextPath()%>/msg/sended",
data: data,
contentType:"application/x-www-form-urlencoded; charset=utf-8",

success: function(args){

alert(args);

$("#msgClose").click();
	},
error: function (error,args) {
alert(error)
	}
});
})
})

</script>




<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<table class="table table-hover"
		style="text-align: center; width: 100%">
		<tr>
			<td colspan="4" class="border-top-style" align="left">
				<h3>
					<strong><span class="glyphicon glyphicon-flash"></span>
						번개모임</strong>
				</h3>
			</td>
		<tr>
			<th width="10%">번호</th>
			<th width="55%">제목</th>
			<th width="20%">작성자</th>
			<th width="15%">등록일</th>
		</tr>
		<c:if test="${empty boardList}">
			<tr>
				<td colspan="4">작성 된 글이 없습니다...</td>
			</tr>
		</c:if>
		<c:if test="${!empty boardList}">
			<c:forEach var="boardList" items="${boardList}" varStatus="status">
				<c:url value="/meeting/detail?boardNo=${boardList.boardNo}"
					var="url" />
				<tr>
					<td onclick="location.href='${url}'" style="cursor: pointer;">
						<c:out value="${boardList.boardNo}" />
					</td>
					<td onclick="location.href='${url}'"
						style="cursor: pointer; text-align: left;"><c:if
							test="${fn:length(boardList.boardTitle) > 20 }">
							<c:out value="${fn:substring(boardList.boardTitle,0,15)}" />...
			</c:if> <c:if test="${fn:length(boardList.boardTitle) <= 20 }">
				${boardList.boardTitle}
			</c:if></td>
					<td>
						<div class="btn-group">
						
							<button type="button" class="btn btn-default dropup-toggle" data-toggle="dropdown">
								<div id="ub${boardList.boardNo}"><c:out value="${boardList.userId}" /></div>
							</button>
							
							<ul class="dropdown-menu" role="menu">
								<li><a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${boardList.userId}">친구추가</a></li>
								<li><a class="modal1" id="b${boardList.boardNo}" data-toggle="modal" data-target="#myModal">
								<span class="glyphicon glyphicon-send"></span> 쪽지보내기</a></li>
							</ul>
							
						</div>
						<div class="modal fade" id="myModal" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">×</button>

														<h4 class="modal-title">쪽지보내기</h4>

													</div>

													<div class="modal-body">

														<input type="hidden" id="sender"
															value="${loginUser.userId}"> <input type="hidden"
															id="receiver"><small>받는
															사람 &nbsp;&nbsp;</small><div id="dropId"></div>
															<br>
															<br>
														<textarea id="msgContent" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submitMsg">
															<span class="glyphicon glyphicon-send"></span> 전송
														</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" id ="msgClose">
															<p class="text-danger">
																<span class="glyphicon glyphicon-remove"></span> 취소
															</p>
														</button>
													</div>
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal-dialog -->
										</div> <!-- /.modal -->


					</td>
					<td onclick="location.href='${url}'" style="cursor: pointer;">
						<c:set value="${boardList.boardRegdate }" var="boardRegdate" /> <fmt:formatDate
							value="${boardRegdate }" type="date" dateStyle="short" /><br>
						<fmt:formatDate value="${boardRegdate }" type="time"
							dateStyle="short" />
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<table class="table" align="center">
		<tr>
			<td style="width: 90%;">
				<div id="pageNumber" align="center">
					<ul class="pager">
						<c:forEach var="i" begin="1" end="${totalPage}">
							<c:url value="/meeting/list?page=${i}" var="goPage" />
							<ul class="pagination">
								<c:if test="${currentPage == i}">
									<li class="active"><a href="#">${i}<span
											class="sr-only">(current)</span></a></li>
								</c:if>
								<c:if test="${currentPage != i}">
									<li><a href="${goPage}">${i}</a></li>
								</c:if>
							</ul>
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
			<td style="width: 10%;"><c:url value="/meeting/write"
					var="write" /> <a href="${write}">
					<button type="submit" class="btn btn-default">
						<p class="text-primary">
							<span class="glyphicon glyphicon-pencil"></span> 글쓰기
						</p>
					</button>
			</a></td>
		</tr>
	</table>

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
