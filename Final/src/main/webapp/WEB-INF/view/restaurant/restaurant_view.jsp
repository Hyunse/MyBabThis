<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>맛집 댓글보기</title>
<script src="<%=request.getContextPath()%>/js/modernizr.custom.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Tab Styles Inspiration: A small collection of styles for tabs" />
<meta name="keywords" content="tabs, inspiration, web design, css, modern, effects, svg" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico"> -->

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Nifty Modal Window Effects with CSS Transitions and Animations" />
<meta name="keywords"
	content="modal, window, overlay, modern, box, css transition, css animation, effect, 3d, perspective" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon" href="../favicon.ico">
<!-- 
<link rel="stylesheet" type="text/css" href="css/default_modal.css" />
<link rel="stylesheet" type="text/css" href="css/component_modal.css" />
<script src="js/modernizr.custom.js"></script>
 -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/tabs.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/tabstyles.css" />
<%-- 
<link rel="stylesheet" type="text/css"
   href="<%=request.getContextPath()%>/css/default.css" /> --%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/component.css" />
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/cs-select.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>


<script>
	//이미지가 필요 사이즈보다 클때만 줄여줌.
	function reSizes(imgObj) {
		var W, H;

		W = imgObj.width;
		H = imgObj.height;
		tmpW = W;
		tmpH = H;
		size = 300;

		if (tmpW > size) {
			tmpW = W * (size / W);
			tmpH = H * (size / W);
		}
		if (tmpH > size) {
			tmpW = W * (size / H);
			tmpH = H * (size / H);

		}

		imgObj.width = tmpW;
		imgObj.height = tmpH;
	};
</script>

<script>
	var a = 3.2;
	var pwidth;
	var score;
	function go(ing, end) {
		/*  document.all.div1.style.width = (ing+1)/end*a*20+"%";
		 document.all.div2.innerHTML = ((ing+1)/end*a).toFixed(2)+"점"; */
		pwidth = (ing + 1) / end * a * 20 + "%";
		score = ((ing + 1) / end * a).toFixed(2) + "점";

		//ing+1 하는이유는 (ing+1)/end*100  =0 이되면 에러가 나기 때문
		//여기 뒤에 *숫자부분에 값들어감
	}
</script>
<script>
	$(document).ready(function() {

		$(".hide").hide();
		
		$(".updateform").hide();

		$(".updateReply").click(function() {
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

		$("#favorite").click(function() {
			alert("즐겨찾기에 추가 되었습니다.");
		})
		
		
		/* 메시지 보내기 */
		
	
		
	$(".modalRr").click(function(){
		var bid = $(this).attr("id");
		var iid = "#i" + bid;
		
		var receiver = $(iid).html();
		
		$("#dropIdRr").html(receiver);	
		$("#receiverRr").val(receiver);
		
	});	
		
	$(".modalRv").click(function(){
			
		var bid = $(this).attr("id");
			var iid = "#i" + bid;
			
			var receiver = $(iid).html();
			
			$("#dropIdRv").html(receiver);	
			$("#receiverRv").val(receiver);
			
		});	

	/* 신고 모달 */
	
	$(".modalShingo").click(function(){
		
			var bid = $(this).attr("id");
			var iid = "#i" + bid;
			var replyno = $(iid).html();
			
			$("#warnNoY").val(replyno);
			
		});	

		
	$("#submitMsgRv").click(function(){
	
	 var sender = $('#senderRv').val(), 
	 	 receiver =  $('#receiverRv').val(), 
	 	 content =  $('#msgContentRv').val();
	 
	var data ={ sender : sender , receiver : receiver, content : content}
	
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/msg/sended",
    data: data,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    
    success: function(args){
    	
    	alert(args);
    	$("#msgCloseRv").click();
      },
    error: function (error,args) {
		alert(error)
	}
    });
})

$("#submitMsgRr").click(function(){
	
	 var sender = $('#senderRr').val(), 
	 	 receiver =  $('#receiverRr').val(), 
	 	 content =  $('#msgContentRr').val();
	 
	var data ={ sender : sender , receiver : receiver, content : content}
	
    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/msg/sended",
    data: data,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    
    success: function(args){
    	
    	alert(args);
    	
    	$("#msgCloseRr").click();
    	
      },
      error: function (error,args) {
  		alert(error)
  		alert("에러")
	}
    });
})


$("#submitShingo").click(function(){
	
	 var sender = $('#senderM').val(), 
	 	 writeType =  $('#writeTypeM').val(), 
	 	 warnNo =  $('#warnNoM').val(),
	 	 content = $('#contentM').val();
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
    	
    	$("#msgCloseM").click();
    	
      },
      error: function (error,args) {
  		alert(error)
	}
    });
})

$("#submtShingoY").click(function(){
	alert("????????nnnn")
	 var sender = $('#senderY').val(), 
	 	 writeType =  $('#writeTypeY').val(), 
	 	 warnNo =  $('#warnNoY').val(),
	 	 content = $('#contentY').val();
	var data ={ sender : sender , writeType : writeType, warnNo : warnNo, content : content};
	
	alert("sender : " +  sender+ ", writeType :  " + writeType +" , warnNo : " +  warnNo +" , content : " +  content)

    $.ajax({
    type: "POST",
    url: "<%=request.getContextPath()%>/msg/sendedReport",
    data: data,
    contentType:"application/x-www-form-urlencoded; charset=utf-8",
    
    success: function(args){
    	
    	alert(args);
    	
    	$("#msgCloseY").click();
    	
      },
      error: function (error,args) {
  		alert(error)
	}
    });
})

	})
</script>


<style>
.ui-menu {
	width: 150px;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<hr>
	<div style="margin-left: 10em;">
		<h2>맛집정보</h2>
	</div>
	<table class="table">

		<tr >
		<td rowspan="6" width="310px" class="border-top-style" ><img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" onLoad="reSizes(this);" /></td>
			<td colspan="3" class="border-top-style" align="right" ><a
				href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}">
					<button id="favorite" class="btn btn-default">
						<span class="glyphicon glyphicon-star"></span> <small>즐겨찾기</small>
					</button>
			</a> 
				
				<!-- 맛집 페이지 신고-->
				<!-- http://localhost:9090/Final/msg/sendReport?writeType=T&warnNo=1 -->
				
				
				 
				<!-- <button id="shingoT" type="button" class="btn btn-default">
				<p class="text-danger"><span class="glyphicon glyphicon-ban-circle"></span> <small>신고</small></p> -->
				<button class="btn btn-default" id="shingoT" data-toggle="modal" data-target="#myModalShingoT">
			<p class="text-danger"><span class="glyphicon glyphicon-ban-circle"></span><small>신고</small></p></button>
			
			<!-- modal 시작 -->
										<div class="modal fade" id="myModalShingoT" tabindex="-1"
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

				<input type="hidden" id="writeTypeM" value="T">
				<input type="hidden" id="warnNoM" value="${restaurant.resNo}">
				<input type="hidden" id="senderM" value="${loginUser.userId}">
				<span class="glyphicon glyphicon-ban-circle"></span><small>신고 사유를 적어주세요 &nbsp;&nbsp;</small>
									<br>
									<br>
				<textarea id="contentM" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submitShingo">
															<span class="glyphicon glyphicon-send"></span> 전송
														</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" id ="msgCloseM">
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
			<td width="25%">지역 : ${restaurant.locName}</td>
			<td colspan="2">주소 : ${restaurant.resLoc}</td>
		</tr>
		<tr>
			<td>가게이름 : ${restaurant.resName}</td>
			<td>분류 : ${restaurant.resKind}</td>
		</tr>
		<tr>
			<td>전화번호 : ${restaurant.resNumber}</td>
			<td>평점 : ${restaurant.resScore}
				<div class="progress"
					style="height: 28px; width: 140px; background-color: blue">
					<img src="../images/star.png"
						style="position: absolute; height: 30px">
					<div class="progress-bar progress-bar-warning" role="progressbar"
						id="star"
						style="width: ${restaurant.resScore * 20}%; height: 100%"></div>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan="2">내용 : ${restaurant.resContent}</td>
		</tr>
		<tr>
			<td colspan="3" align="center"><c:url
					value="/restaurant/edit?resNo=${restaurant.resNo}" var="url" /> <a
				href="${url }">
					<button class="btn btn-default">
						<p class="text-success">
							<span class="glyphicon glyphicon-pencil"></span> <small>수정</small>
						</p>
					</button>
			</a> <c:url
					value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }"
					var="url" /> <a href="${url }">
					<button class="btn btn-default">
						<p class="text-danger">
							<span class="glyphicon glyphicon-trash"></span> <small>삭제</small>
						</p>
					</button>
			</a></td>
		</tr>
	</table>
	<%
		int start = 0;
		int end = 100;
		for (int i = start; i < end; i++) {
			out.println("<script>go(" + i + "," + end + ")</script>");

			//상태진행바의 진행 로직을 실행하는부분
			//출력속도
			Thread.sleep(7);
			//로직 끝

			out.flush();
		}
	%>





	<hr>
	<!-- /////댓글 Tab//////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	<div class="container">
		<section>
			<div class="tabs tabs-style-topline">
				<nav>
					<ul>
						<li><a href="#section-topline-1"><span>댓글</span></a></li>
						<li><a href="#section-topline-2"><span>리뷰</span></a></li>
					</ul>
				</nav>
				<div class="content-wrap">
					<section id="section-topline-1" style="padding-bottom:60px;">
						<table class="table table-hover" style="width: 100%; max-width: 100%">
							<tr>
								<th width="60%">내용</th>
								<th width="20%">작성자</th>
								<th width="20%">등록일</th>
							</tr>
							<c:forEach items="${rreplys }" var="rreply">
								<tr>
									<td style="text-align: left;">
										<div id="hbtn${rreply.rreplyNo}"><c:out value="${rreply.rreplyContent }" /></div> <c:url value="/rreply/update" var="action" /> 
										<form:form
											modelAttribute="rreply" method="post" action="${action }"
											class="updateform" id="ubtn${rreply.rreplyNo }" width="50">
											<form:hidden path="resNo" value="${rreply.resNo }" />
											<form:hidden path="rreplyNo" value="${rreply.rreplyNo }" />
											<form:hidden path="userId" value="${loginUser.userId }" />
											<form:input id="tbtn${rreply.rreplyNo}" type="text"
												class="form-control" path="rreplyContent"></form:input>
											<span class="input-group-btn">
												<button class="btn btn-default" type="submit"
													name="rreply_update">확인</button>
											</span>

											<!-- /input-group -->


										</form:form>
									</td>
									<!-- 다른사람댓글 -->
									<c:if test="${rreply.userId != loginUser.userId}">
									<td>
									<!-- 매핑위한 div	 -->
									<div id="is${rreply.rreplyNo}" class="hide">${rreply.rreplyNo}</div>
										
										
										<div class="btn-group">
											<button type="button" class="btn btn-link dropup-toggle"
												data-toggle="dropdown">
											
												<div id="ib${rreply.rreplyNo}"><c:out value="${rreply.userId}" /></div>
												
											</button>
											<ul class="dropdown-menu" role="menu">

												<li>
													<a href="/Final/friend/create?userId=${loginUser.userId}&friendId=${rreply.userId}">
														<p class="text-default"><span class="glyphicon glyphicon-user"></span> 친구추가</p>
													</a>
												</li>
												<li>
													<a class="modalRr" id="b${rreply.rreplyNo}" data-toggle="modal" data-target="#myModalReply">
														<p class="text-info"><span class="glyphicon glyphicon-send"></span> 쪽지보내기</p>
													</a>
												</li>
												<li>
												
													<a class ="modalShingo" id="s${rreply.rreplyNo}" data-toggle="modal" data-target="#myModalShingoY">
														<p class="text-danger"><span class="glyphicon glyphicon-ban-circle"></span> 댓글신고</p>
													</a>
												</li>

											</ul>
										</div>
										
			
			<!-- 신고 modal 시작 -->
										<div class="modal fade" id="myModalShingoY" tabindex="-1"
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

				<input type="hidden" id="writeTypeY" value="Y">
				<input type="hidden" id="warnNoY">
				<input type="hidden" id="senderY" value="${loginUser.userId}">
				<span class="glyphicon glyphicon-ban-circle"></span><small>신고 사유를 적어주세요 &nbsp;&nbsp;</small>
									<br>
									<br>
				<textarea id="contentY" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submtShingoY">
															<span class="glyphicon glyphicon-send"></span> 전송
														</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" id ="msgCloseY">
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
										
										
			<!--쪽지 modal 시작 -->
										<div class="modal fade" id="myModalReply" tabindex="-1"
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

														<input type="hidden" id="senderRr"
															value="${loginUser.userId}"> <input type="hidden"
															id="receiverRr"><small>받는
															사람 &nbsp;&nbsp;</small><div id="dropIdRr"></div>
															<br>
															<br>
														<textarea id="msgContentRr" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submitMsgRr">
															<span class="glyphicon glyphicon-send"></span> 전송
														</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" id ="msgCloseRr">
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
									</c:if>
									<!-- 내댓글 -->
									<c:if test="${rreply.userId == loginUser.userId}">
									<td>
										<div class="btn-group">
											<button type="button" class="btn btn-link dropup-toggle"
												data-toggle="dropdown">
												${rreply.userId}
												</span>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li>
													<a class="updateReply" id="btn${rreply.rreplyNo}">
														<p class="text-success">
															<span class="glyphicon glyphicon-pencil"></span> 수정
														</p>
													</a> 
												</li>
												<li>
													<c:url value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }" var="url"></c:url> 
														<a href="${url}">
															<p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</p>
														</a>
												</li>
											</ul>
										</div>
									</td>
									</c:if>
									
									<td>
										<small> <c:set
												value="${rreply.rreplyUpdatedate }" var="rreplyUpdatedate" />
											<fmt:formatDate value="${rreplyUpdatedate }" type="date"
												dateStyle="short" /> &nbsp;&nbsp;<fmt:formatDate
												value="${rreplyUpdatedate }" type="time" dateStyle="short" /></small>
									</td>



								</tr>
							</c:forEach>
						</table>
						<table class="table" style="width: 80%; max-width: 100%" >
							<tr>
								<c:url value="/rreply/write" var="rreplyw" />
								<form:form modelAttribute="rreply" method="post"
									action="${rreplyw }">
									<td style="width: 10%"><img width="40" height="40"
										src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
									</td>
									<td style="width: 80%"><form:input path="rreplyContent"
											class="form-control" /></td>
									<td style="width: 10%">
										<button type="submit" name="rwrite" class="btn btn-default">작성</button>
									</td>
									<form:hidden path="resNo" value="${restaurant.resNo}" />
									<form:hidden path="userId" value="${loginUser.userId}" />
								</form:form>
							</tr>
						</table>


					</section>
<!-- /////리뷰 Tab//////////////////////////////////////////////////////////////////////////////////////////////////////// -->
					
					<section id="section-topline-2">
						<table class="table table-hover" style="width: 100%; max-width: 100%">
							<tr>
								<th style="width: 10%">평가</th>
								<th style="width: 50%">제목</th>
								<th style="width: 20%">작성자</th>
								<th style="width: 20%">등록일</th>
							</tr>
							<c:forEach items="${reviews }" var="review">
								<c:url value="/review/detail?reviewNo=${review.reviewNo }"
									var="url"></c:url>
								<tr>
									<td onclick="location.href='${url}'" style="cursor: pointer;"><c:out
											value="${review.reviewScore }" /></td>
									<td onclick="location.href='${url}'" style="cursor: pointer;"><small>${review.reviewTitle }</small></td>
										
										
										<c:if test="${review.userId != loginUser.userId}">
										<td>
										<div class="btn-group">
											<button type="button" class="btn btn-link dropup-toggle"
												data-toggle="dropdown">
												<div id="ib${review.reviewNo }"><c:out value="${review.userId}" /></div>
											</button>
											<ul class="dropdown-menu" role="menu">
												<li><a
													href="/Final/friend/create?userId=${loginUser.userId}&friendId=${review.userId}">친구추가</a></li>
												<li><a class="modalRv" data-toggle="modal" id="b${review.reviewNo}"
													data-target="#myModalReview">쪽지보내기</a></li>
											</ul>
										</div> 
										
										
										<!-- 쪽지보내기 Modal -->
										<div class="modal fade" id="myModalReview" tabindex="-1"
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

														<input type="hidden" id="senderRv"
															value="${loginUser.userId}"> <input type="hidden"
															id="receiverRv"><small>받는
															사람 &nbsp;&nbsp;</small><div id="dropIdRv"></div>
															<br>
															<br>
														<textarea id="msgContentRv" class="form-control" rows="5"></textarea>

													</div>

													<div class="modal-footer">

														<button class="btn btn-default" id="submitMsgRv">
															<span class="glyphicon glyphicon-send"></span> 전송
														</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal" id ="msgCloseRv">
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
										<%-- </c:if> --%>
										</td>
										</c:if>
										<c:if test="${review.userId == loginUser.userId}">
										<td>
										<button type="button" class="btn btn-link" disabled="disabled">${review.userId}</button>
										</td>
										</c:if>
										
										
									<td onclick="location.href='${url}'" style="cursor: pointer;">
										<small> <c:set value="${review.reviewUpdatedate }"
												var="reviewUpdatedate" /> <fmt:formatDate
												value="${reviewUpdatedate }" type="date" dateStyle="short" />&nbsp;&nbsp;
											<fmt:formatDate value="${reviewUpdatedate }" type="time"
												dateStyle="short" />
									</small></td>
								</tr>
							</c:forEach>
						</table>
						<c:url
							value="/review/write?userId=${loginUser.userId }&resNo=${resNo }"
							var="url"></c:url>
						<br>
						<br> <a href="${url }">
							<button class="btn btn-default">작성</button>
						</a>
	<br>
	<br>
	<br>
	<br>

					</section>
				</div>
				<!-- /content -->
			</div>
			<!-- /tabs -->
		</section>

	</div>
<br>
	<br>
	<br>
	<br>

	<script src="<%=request.getContextPath()%>/js/cbpFWTabs.js"></script>
	<script>
		(function() {

			[].slice.call(document.querySelectorAll('.tabs')).forEach(
					function(el) {
						new CBPFWTabs(el);
					});

		})();
	</script>
	<hr>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
	
</body>
</html>
