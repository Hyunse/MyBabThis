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
<style> 
pre { display: inline; } 
</style> 

<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>

	$(document).ready(function() {

		$(".updateform").hide();

		/* $(".updateBtn").each(function(index){
			alert(index + this);
			$("this").attr({
				"id" : "b_"+index 
			});
			var bbi = $("this").attr("id");
			alert("업데이트 버튼 아이디 확인 : " + bbi);
			alert("업데이트 버튼 value : " + $("#b_1").val());
		}); */

		/* 	$(".updateBtn").click(function(index){
		
		
		 $(".hide").hide();
		 $(".updateform").show();
		
		 var bid= $(".updateBtn").attr("id");
		 var tid= $(".content").attr("id")
		 alert("버튼 아이디" +bid);
		 /* alert("업데이트 버튼 번호 추출: "+bid.substring(3))
		 alert("td  번호 추출: "+substring(3)) */

		/* 	$(".breplyContentTxtUp").val($("#con").val())
		})
		 */

		/* $("#btn3").click(function(){
		    $("#test3").val("Dolly Duck");
		}); */
		
		$(".updateBtn").click(function() {
			alert(this.id); // or alert($(this).attr('id'));
			var bid = $(this).attr("id");
			var hid = "#h" + bid;
			alert("td 아이디" + hid);
			var content = $(hid).html();
			alert(hid + " : " + content)

			var uid = "#u" + bid;
		
			var tid = "#t" + bid;

			$(tid).val(content);
			
			$(hid).hide();
			$(uid).show();

		});

	})

	/* function goupdate(){
			alert("this : " +  this);
		 	var bid = $("this").attr("id");
			var hid = "#h" + bid;
			alert("td 아이디"+ hid);
		 	var content = $(hid).html();
			alert(hid + " : " + content)
		 	//alert(tid+ " : "+document.querySelector("#write"+"Button"));
			//alert("버튼 아이디 : " + bid);
			//alert("td 안의 내용 : " + content);
		}
	 */
	/* 	$('#myTable tr').each(function() {
		var $tds = $(this).find('td');
		
		if($tds.length != 0) {
		var $currText = $tds.eq(0).text();
		alert('Curr Source Language: ' + $currText);
		}
		
		}); */
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
	<table border="1" id="Table">
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
			<tr>
				<td><c:out value="${breply.breplyNo }" /></td>
				<td><c:out value="${breply.boardNo }" /></td>
				<td id="bbtn${breply.breplyNo }">

					<div id="hbtn${breply.breplyNo}">

						<c:out value="${breply.breplyContent }" />

					</div> <c:url value="/breply/update" var="action" /> 
					<form:form modelAttribute="breply" method="post" action="${action }"
						class="updateform" id="ubtn${breply.breplyNo }">
						<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
						<form:hidden path="userId" value="${loginUser.userId }" />
						<label>내용</label> :
						<textarea id="tbtn${breply.breplyNo}" rows='15' cols='65'class="droptext"></textarea>
						<button type="submit" name="breply_update">수정</button>

					</form:form>

				</td>
				<td><c:out value="${breply.userId }" /></td>
				<td><c:out value="${breply.breplyUpdatedate }" /></td>

				<td><button class="updateBtn" id="btn${breply.breplyNo}">수정</button></td>

				<td><c:url
						value="/meeting/delete?breplyNo=${breply.breplyNo }&boardNo=${breply.boardNo }"
						var="url"></c:url> <a href="${url}"><button>삭제</button></a></td>
			</tr>
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

	<c:url value="/meeting/write" var="action"></c:url>
	<form:form modelAttribute="breply" method="post" action="${action }"
		id="writeform">
		<h2>댓글작성</h2>
		<form:hidden path="boardNo" value="${boardDetail.boardNo }" />
		<form:hidden path="userId" value="${loginUser.userId }" />
		<label>내용</label> : <form:textarea path="breplyContent" />
		<button type="submit" name="breply_write">작성</button>
	</form:form>
	<%-- 
	<c:url value="/breply/update" var="action" />
	<form:form modelAttribute="breply" method="post" action="${action }" id="updateform" >
	<form id="updateform">
	<h2>댓글수정</h2>
		<label>내용</label> : <textarea id="breplyContentTxt"></textarea>
		<button type="submit" name="breply_update">수정</button>
	</form> --%>

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