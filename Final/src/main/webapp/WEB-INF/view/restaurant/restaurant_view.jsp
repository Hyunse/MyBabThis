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
	href="<%=request.getContextPath()%>/css/tabstyles.css" /><%-- 
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
	
<%-- 
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/cs-skin-elastic.css" />
 --%>



<!--  <script>
  $(function() {
    $( "#tabs" ).tabs();
  }); 
 </script> -->
 <!-- 
<script>
	$(function() {
		$(".menu").menu();
	});
</script>
 -->


<script>
	//이미지가 필요 사이즈보다 클때만 줄여줌.
	function reSizes(imgObj) {
		var W, H;

		W = imgObj.width;
		H = imgObj.height;
		tmpW = W;
		tmpH = H;
		size=300;

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
var a=3.2;
var pwidth;
var score;
function go(ing,end){
/*  document.all.div1.style.width = (ing+1)/end*a*20+"%";
 document.all.div2.innerHTML = ((ing+1)/end*a).toFixed(2)+"점"; */
 pwidth=(ing+1)/end*a*20+"%";
 score = ((ing+1)/end*a).toFixed(2)+"점";

  //ing+1 하는이유는 (ing+1)/end*100  =0 이되면 에러가 나기 때문
  //여기 뒤에 *숫자부분에 값들어감
}
</script>
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


<style>
.ui-menu {
	width: 150px;
}
</style>

</head>
<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<hr>
	<h1>맛집 페이지</h1>
	
	<table class="table">
	<tr><td rowspan="6" width="310px">
	<img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" onLoad="reSizes(this);"/>
	</td>
	<td width="25%">지역 : ${restaurant.locName}</td><td>
	<c:url value="/restaurant/edit?resNo=${restaurant.resNo}"
					var="url" /> <a href="${url }"><button>편집</button></a> <c:url
					value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }"
					var="url" /> <a href="${url }"><button>삭제</button></a>
	<a href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}"><button>즐겨찾기</button></a></td>
	</tr>
	<tr><td>가게이름 : ${restaurant.resName}</td><td>분류 : ${restaurant.resKind}</td></tr>
	<tr><td>전화번호 : ${restaurant.resNumber}</td><td><div class="progress" style="height: 28px; width: 140px; background-color: blue"><img src="../images/star.png" style="position: absolute; height: 30px">
  <div class="progress-bar progress-bar-warning" role="progressbar" id="star" style="width: ${restaurant.resScore * 20}%; height: 100%">
  </div>
</div> 
평점 : ${restaurant.resScore}</td></tr>
	<tr><td colspan="2">주소 : ${restaurant.resLoc}</td></tr>
	<tr><td colspan="2">내용 : ${restaurant.resContent}</td></tr>
		
	</table>
	<%

int start = 0;
int end   = 100;
for( int i = start ; i < end ; i ++ ) {
 out.println("<script>go("+i+","+end+")</script>");


 //상태진행바의 진행 로직을 실행하는부분
 //출력속도
 Thread.sleep(7);
 //로직 끝

 out.flush() ;
}

%>
	
	
<%-- 	
	<img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}"
		onLoad="reSizes(this);">
	<table class="table">
		<tr>
			<th>맛집 번호</th>
			<th>업체명</th>
			<th>전화번호</th>
			<th>내용</th>
			<th>평점</th>
			<th>비고</th>
			<th>즐겨찾기</th>
		<tr>
			<td><c:out value="${restaurant.resNo}" /></td>
			<td><c:out value="${restaurant.locName}" /></td>
			<td><c:out value="${restaurant.resName}" /></td>
			<td><c:out value="${restaurant.resContent}" /></td>
			<td><c:out value="${restaurant.resScore }" /></td>

			<td><c:url value="/restaurant/edit?resNo=${restaurant.resNo}"
					var="url" /> <a href="${url }"><button>편집</button></a> <c:url
					value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }"
					var="url" /> <a href="${url }"><button>삭제</button></a>
			<td><a
				href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}"><button>즐겨찾기</button></a>
			</td>
		</tr>
	</table>
	 --%>
	
	
	<hr>
	<div class="container">
		<section>
		<div class="tabs tabs-style-topline">
			<nav>
			<ul>
				<li><a href="#section-topline-1" ><span>댓글</span></a></li>
				<li><a href="#section-topline-2" ><span>리뷰</span></a></li>
			</ul>
			</nav>
			<div class="content-wrap">
				<section id="section-topline-1">
				<table  class="table" style="width: 100%">
					<tr>
						<!-- <th>번호</th> -->
						<th width="50%">내용</th>
						<th width="20%">작성자</th>
						<th width="30%">등록일</th>
					</tr>
					<c:forEach items="${rreplys }" var="rreply">
						<tr>
							<%-- <td><c:out value="${rreply.rreplyNo }" /></td> --%>
							
							<td>
							<div id="hbtn${rreply.rreplyNo}"><c:out value="${rreply.rreplyContent }" /></div>
							 <c:url value="/rreply/update" var="action"/>
						<form:form modelAttribute="rreply" method="post" action="${action }" class="updateform" id="ubtn${rreply.rreplyNo }" width="50">
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
							<td>
								<c:out value="${rreply.userId}"/>
								
								<%-- <ul class="dl-menu">
									<li><c:out value="${rreply.userId}" /> <a
										href="/Final/friend/create?userId=${loginUser.userId}&friendId=${review.userId}">친구추가</a></li>
									<li><a href="/Final/msg/send?receiver=${rreply.userId}">쪽지보내기</a></li>
								</ul> --%>
							</td>
							<td>
							<c:set value="${rreply.rreplyUpdatedate }" var="rreplyUpdatedate"/>
							<fmt:formatDate value="${rreplyUpdatedate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
							<fmt:formatDate value="${rreplyUpdatedate }" type="time" pattern="hh:MM"/>
							</td>
							
							<c:if test="${rreply.userId == loginUser.userId}">
								<td style="border: solid 1px #FFF; word-break: break-all;" >
								<%-- <button class="btn btn-default" id="btn${breply.breplyNo}">
								<p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p></button>  --%>
								 
								 <c:url value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }" var="url"></c:url> 
								 <a href="${url}">
									 <button class="btn btn-default">
										<p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</p>
									</button>
								</a>
								<%--  <c:url value="/rreply/edit?rreplyNo=${rreply.rreplyNo }" var="url"></c:url> 
								 <a href="${url}">
								 --%>	 <button class="btn btn-default" id="btn${rreply.rreplyNo}">
										<p class="text-success"><span class="glyphicon glyphicon-pencil"></span> 수정</p>
									</button>
								</td>
								
							
								

	
								
							</c:if>
							
							
							
					<%-- 		<td><c:url value="/rreply/edit?rreplyNo=${rreply.rreplyNo }"
									var="url"></c:url> <a href="${url}"><button class="btn btn-default">수정</button></a>
							<c:url
									value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }"
									var="url"></c:url> <a href="${url}"><button class="btn btn-default">삭제</button></a></td> --%>
									
							<!-- <td><div class="container"><div class="main clearfix">
								<div class="column">
								<button class="md-trigger" data-modal="modal-1">삭제</button>
									</div></div></div></td> -->
						</tr>
					</c:forEach>
				</table>
					<c:url value="/rreply/write" var="rreplyw" />
		<form:form modelAttribute="rreply" method="post" action="${rreplyw }" >

	<img width="40" height="40"	src="<%=request.getContextPath()%>/upload/${loginUser.userImg}"><span>${loginUser.userId }</span> 
		
			<form:input path="rreplyContent" />

		 <form:hidden path="resNo" value="${restaurant.resNo}"/>
		 <form:hidden path="userId" value="${loginUser.userId}"/>
		 <button type="submit" name="rwrite">작성</button>
		 </form:form>
				
				<%-- <c:url value="/rreply/write?resNo=${resNo }" var="url"></c:url> <a
					href="${url }"><button class="btn btn-default">댓글작성</button></a>  --%></section>
				<section id="section-topline-2">
				<table class="table table-hover" style="width: 100%">
					<tr>
						<th>사진</th>
						<th>평가</th>
						<th>설명</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
					<c:forEach items="${reviews }" var="review">
					<c:url value="/review/detail?reviewNo=${review.reviewNo }" var="url"></c:url>
						<tr onclick="location.href='${url}'" style="cursor: pointer;">
							<td>등록된 사진이 없습니다.</td>
							<td><c:out value="${review.reviewScore }" /></td>
							
							<td><a href="${url }"><c:out
										value="${review.reviewContent }" /></a></td>
							<td>
								<ul class="dl-menu">
									<li><c:out value="${review.userId}" />
										<ul>
											<li><a
												href="/Final/friend/create?userId=${loginUser.userId}&friendId=${review.userId}">친구추가</a></li>
											<li><a href="/Final/msg/send?receiver=${review.userId}">쪽지보내기</a></li>
										</ul>
									</li>
								</ul>
							</td>
							<td>
							<c:set value="${review.reviewUpdatedate }" var="reviewUpdatedate"/>
							<fmt:formatDate value="${reviewUpdatedate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
							<fmt:formatDate value="${reviewUpdatedate }" type="time" pattern="hh:MM"/>
							</td>
						</tr>
					</c:forEach>
				</table>
				
				<c:url
					value="/review/write?userId=${loginUser.userId }&resNo=${resNo }"
					var="url"></c:url> <a href="${url }"><button class="btn btn-default">리뷰작성</button></a> </section>
			</div>
			<!-- /content -->
		</div>
		<!-- /tabs --> </section>

	</div>

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
