<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="mybabthis.entity.Msg"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>받은 쪽지함</title>
</head>
<script>
$(document).ready(function() {
	
	
	$(".modalMsg").click(function(){
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
	<table class="table table-hover" style="width: 100%; max-width: 100%">
		<tr>
			<th style="width: 15%">보낸사람</th>
			<th style="width: 15%">받은사람</th>
			<th style="width: 50%">내용</th>
			<th style="width: 20%">날짜</th>
			<th></th>
		</tr>
		<% int i = 1 ; %>
		<c:forEach var="msg" items="${receiveMsgs}" varStatus="status">
		
			
			
			<tr>
				<td><div id="ub<%=i%>"><c:out value="${msg.sender}" /></div></td>
				<td><c:out value="${msg.receiver}" /></td>
				<td style="text-align: left;"><c:out value="${msg.msgContent}" /></td>
				<td><c:set value="${msg.writeDate }" var="writeDate" /> <fmt:formatDate
						value="${writeDate }" type="date" dateStyle="short" />&nbsp;&nbsp;
					<fmt:formatDate value="${writeDate }" type="time" dateStyle="short" />
				</td>
				<td>
						<div class="btn-group">
						
							
							
						<button class="btn btn-default modalMsg" id="b<%=i%>" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-send"></span>답장</button>
								
							
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
															<p class="text-danger" style="padding: 0;">
															<span class="glyphicon glyphicon-remove"></span>취소
															</p>
														</button>
													</div>
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal-dialog -->
										</div> <!-- /.modal -->		
				
				
				</td>
			</tr>
			<% i++; %>
		</c:forEach>
	</table>


</body>
</html>
