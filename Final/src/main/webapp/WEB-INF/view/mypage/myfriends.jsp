<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>

<style type="text/css">
table{
align: center;
text-align: center;
width: 
}
</style>
</head>

<script>
$(document).ready(function() {
	
	
	$(".send").click(function(){
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
	$('#msgContent').val("");
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
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />
	<br>
	<br>
	<table style="width: 60%; text-align: left;" align="center" >
		<tr>
			<td style="width:10%;"><select id="select" class="form-control" >
					<option value="userName">이름</option>
					<option value="userId">아이디</option>
					<option value="userRegdate">등록일</option>
					<option value="userGrade">등급</option>
			</select></td>
			<td style="width:30%;"><input type="text" id="searchWord" name="searchWord"
				class="form-control"></td>
			<td><input type="button" id="search" name="search" value="검색"
				class="btn btn-default"></td>
		</tr>
	</table>

	<%
		int i = 1;
	%>


	<table class="table table-hover" style="text-align: center; width: 60%;">
		<tr>
			<th style="width: 10%">번호</th>
			<th style="width: 20%">아이디</th>
			<th style="width: 20%">이름</th>
			<th style="width: 10%">등급</th>
			<th style="width: 20%">등록일</th>
			<th style="width: 20%"></th>
		</tr>
		<c:forEach items="${users}" var="user">
<%-- 			<c:url value="/admin/users_list?userId=${user.userId}" var="url" />
			<tr onclick="location.href='${url}'" style="cursor: pointer;"> --%>
			<tr>
				<td><c:out value="<%=i%>" /></td>
				<td><div id="ub<%=i%>"><c:out value="${user.userId}" /></div></td>
				<td><c:out value="${user.userName}" /></td>
				<td><c:out value="${user.userGrade}" /></td>
				<td>
				<c:set value="${user.userRegdate }" var="userRegdate"/>
				<fmt:formatDate value="${userRegdate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
				<fmt:formatDate value="${userRegdate }" type="time" pattern="hh:MM"/>
				</td>
				<td>
						<button type="button" class="btn btn-default send" id="b<%=i%>" data-toggle="modal" data-target="#myModal" >
							<p class="text-info"><span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;쪽지</p>
						</button>
				<c:url value="/friend/delete?userId=${loginUser.userId}&friendId=${user.userId}" var="goDelete" />
					<a href="${goDelete}">
						<button type="button" class="btn btn-default" >
							<p class="text-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;삭제</p>
						</button>
					</a>
				</td>
			</tr>	
		
			<%
				i++;
			%>
			
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
											<h4 class="modal-title">쪽지보내기</h4>

									</div>

									<div class="modal-body" align="center">

									<input type="hidden" id="sender" value="${loginUser.userId}"> 
									<input type="hidden" id="receiver">
									<small>받는 사람 &nbsp;&nbsp;</small>
									<div id="dropId"></div>
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
		</c:forEach>
	</table>
	<br>
<br>
<br>
<br>
<br>

<hr>
<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
