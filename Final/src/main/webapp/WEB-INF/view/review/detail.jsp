<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰보기</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
	

$("#submitShingo").click(function(){
	
	 var sender = $('#sender').val(), 
	 	 writeType =  $('#writeType').val(), 
	 	 warnNo =  $('#warnNo').val(),
	 	 content = $('#content').val();
	var data ={ sender : sender , writeType : writeType, warnNo : warnNo, content : content};
	
/* 	alert("sender : " +  sender+ ", writeType :  " + writeType +" , warnNo : " +  warnNo +" , content : " +  content)
 */	
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/msg/sendedReport",
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
	<div class="table-responsive">
		<table class="table">
			<%-- <tr style="width: 100%">
				<th width="10%" style="text-align: center">작성자</th>
				<td><c:out value="${review.userId }" /></td>
			</tr> --%>
			<%-- <tr>
				<td colspan="2" class="border-top-style" align="right"><c:url value="/restaurant/view?resNo=${review.resNo }" var="url"></c:url>
					<a href="${url}"><button class="btn btn-default">
							<span class="glyphicon glyphicon-th-list"></span> 목록</button></a></td>
			</tr>
			<tr>
			<tr>
				<th width="10%" style="text-align: center">등록일</th>
				<td>
					<c:out value="${review.reviewUpdatedate }" /> <c:set
						value="${review.reviewUpdatedate }" var="reviewUpdatedate" /> <fmt:formatDate
						value="${reviewUpdatedate }" type="date" dateStyle="short" />&nbsp;&nbsp;
					<fmt:formatDate value="${reviewUpdatedate }" type="time"
						dateStyle="short" />
				</td>
			</tr>
			<tr>
				<th width="10%" style="text-align: center">맛평가</th>
				<td><c:out value="${review.reviewScore }" />점</td>
			</tr>
			<tr>
				<th width="10%" style="text-align: center">내용</th>
				<td>${review.reviewContent}</td>
			</tr> --%>
			
			
				<tr>
					<td colspan="2" class="border-top-style" align="right">
					
					<%-- <c:url
							value="/msg/sendReport?writeType=F&warnNo=${review.reviewNo}"
							var="goReport" /> <a href="${goReport}"> --%>
							
							
						<button class="btn btn-default" id="shingo" data-toggle="modal" data-target="#myModalShingo">
			<p class="text-danger"><span class="glyphicon glyphicon-ban-circle"></span><small>신고</small></p></button>
			
			<!-- modal 시작 -->
										<div class="modal fade" id="myModalShingo" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true">×</button>

														<h4 class="modal-title">신고하기</h4>

													</div>

													<div class="modal-body">
	
				<input type="hidden" id="writeType" value="F">
				<input type="hidden" id="warnNo" value="${review.reviewNo}">
				<input type="hidden" id="sender" value="${loginUser.userId}">
				<span class="glyphicon glyphicon-ban-circle"></span><small>신고 사유를 적어주세요 &nbsp;&nbsp;</small>
									<br>
									<br>
				<textarea id="content" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submitShingo">
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
				</tr>
				<tr>
					<td colspan="2" class="border-top-style"><strong>맛집 리뷰</strong></td>
				</tr>
				<tr style="width: 100%">
					<td class="border-top-style" rowspan="2">[${review.reviewNo}]
						&nbsp;${review.reviewTitle}</td>
					<td class="border-top-style" align="right"><p
							class="text-muted">
							<c:set value="${review.reviewUpdatedate}" var="reviewUpdatedate" />
							<fmt:formatDate value="${reviewUpdatedate }" type="date"
								dateStyle="short" />
							&nbsp;&nbsp;
							<fmt:formatDate value="${reviewUpdatedate }" type="time"
								dateStyle="short" />
						</p></td>
				</tr>
				<tr style="width: 100%">

				</tr>

				<tr>
					<td colspan="3" align="right"><img width="40" height="40"
						src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
					<p class="text-muted">${review.userId }</p></td>

				</tr>
				<tr>
					<td class="border-top-style" colspan="3">${review.reviewContent }<br></td>
				</tr>

			<tr>
				<td colspan="2" align="center"><br><br> <c:url
						value="/review/edit?reviewNo=${review.reviewNo }" var="url"></c:url>
					<a href="${url}"><button class="btn btn-default">
							<p class="text-success">
								<span class="glyphicon glyphicon-pencil"></span> 수정
							</p>
						</button></a> <c:url
						value="/review/delete?reviewNo=${review.reviewNo }&resNo=${review.resNo }"
						var="url"></c:url> <a href="${url}"><button
							class="btn btn-default">
							<p class="text-danger">
								<span class="glyphicon glyphicon-trash"></span> 삭제
							</p>
						</button></a></td>
			</tr>
		</table>
		<br>
		<br>
		<br>
	</div>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>