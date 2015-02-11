<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#tabs" ).tabs();
  }); 
 </script>


</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp"/>
<hr>
<h1>맛집 페이지</h1>
<table border="1">
<tr><th>맛집 번호</th><th>업체명</th><th>전화번호</th><th>내용</th><th>평점</th><th>비고</th><th>즐겨찾기</th>
<tr>
<td><c:out value="${restaurant.resNo}"/></td>
<td><c:out value="${restaurant.locName}"/></td>
<td><c:out value="${restaurant.resName}"/></td>
<td><c:out value="${restaurant.resContent}"/></td>
<td><c:out value="${restaurant.resScore }"/></td>

<td>
<c:url value="/restaurant/edit?resNo=${restaurant.resNo}" var="url"/>
<a href ="${url }"><button>편집</button></a>
<c:url value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }" var="url"/>
<a href ="${url }"><button>삭제</button></a>
<td><a href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}" ><button>즐겨찾기</button></a>
</td></tr>
</table>

<hr>


<div id="tabs">
  <ul>
    <li><a href="#tabs-1">댓글</a></li>
    <li><a href="#tabs-2">리뷰</a></li>
  </ul>
  <div id="tabs-1">
	<table border="1">
		<tr>
		    <th>번호</th>
			<th>내용</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${rreplys }" var="rreply">
			<tr>
				<td><c:out value="${rreply.rreplyNo }" /></td>
				<td><c:out value="${rreply.rreplyContent }" /></td>
				<td><c:out value="${rreply.userId }" /></td>
				<td><c:out value="${rreply.rreplyUpdatedate }" /></td>
				<td>
			<c:url value="/rreply/edit?rreplyNo=${rreply.rreplyNo }" var="url"></c:url>
			<a href="${url}"><button>수정</button></a>
			</td>
				<td>
			<c:url value="/rreply/delete?rreplyNo=${rreply.rreplyNo }&resNo=${rreply.resNo }" var="url"></c:url>
			<a href="${url}"><button>삭제</button></a>
			</td>
			</tr>
		</c:forEach>
	</table>
	<c:url value="/rreply/write?resNo=${resNo }" var="url"></c:url>
	<a href="${url }"><button>댓글작성</button></a>
  </div>

  <div id="tabs-2">
	<table border="1">
		<tr>
			<th>사진</th>
			<th>평가</th>
			<th>설명</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
		<c:forEach items="${reviews }" var="review">
			<tr>
				<td>등록된 사진이 없습니다.</td>
				<td><c:out value="${review.reviewScore }" /></td>
				<c:url value="/review/detail?reviewNo=${review.reviewNo }" var="url"></c:url> 
				<td><a href="${url }"><c:out value="${review.reviewContent }" /></a></td>
				<td><c:out value="${review.userId }" /></td>
				<td><c:out value="${review.reviewUpdatedate }" /></td>
			</tr>
		</c:forEach>
	</table>
	<c:url value="/review/write?userId=${loginUser.userId }&resNo=${resNo }" var="url"></c:url> 
	<a href="${url }"><button>리뷰작성</button></a> 
  </div>
</div>
 
</body>
</html>