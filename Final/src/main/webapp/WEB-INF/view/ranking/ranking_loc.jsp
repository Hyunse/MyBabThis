<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script src="http://code.jquery.com/jquery-latest.js"></script>
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

</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
	<jsp:include page="/WEB-INF/view/ranking/ranking_header.jsp" />
	
	<%int i=1; %>
	
	<div id="rank5" align="center"><br><h3><span class="glyphicon glyphicon-star"></span><strong > 맛집 TOP5</strong></h3></div>
	<c:forEach items="${restaurants }" var="restaurant">
	
	
	<table class="tableRank" style="max-width:800px;">
	<!-- <tr><td colspan="3"><br><h3><span class="glyphicon glyphicon-star"></span><strong> 맛집 TOP5</strong></h3></td></tr> -->
	<tr><td colspan="3"><h3 style="margin-left: 0 auto;"><%=i %> 위</h3></td></tr>
	<tr><td rowspan="5" width="310px" style="text-align: center;">
	
	<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="goRes" />
	<a href="${goRes }">
	<img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" onLoad="reSizes(this);"/>
	</a>
	
	</td>
	<td>지역 : ${restaurant.locName}</td><!-- <td> -->
	<%-- <c:url value="/restaurant/edit?resNo=${restaurant.resNo}" var="url" /> 
	<a href="${url }">
	<button class="btn btn-default">
		<p class="text-success">
			<span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;편집
		</p>
	</button>
	</a> 
	<c:url value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }" var="url" />
	<a href="${url }">
	<button class="btn btn-default">
		<p class="text-danger">
			<span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;삭제
		</p>
	</button>
	</a> --%>
	<%-- <a href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}">
	<button class="btn btn-default">
			<span class="glyphicon glyphicon-star"></span>&nbsp;즐겨찾기
	</button>
	</a></td> --%>
	</tr>
	<tr><td>가게이름 : ${restaurant.resName}</td><td>분류 : ${restaurant.resKind}</td></tr>
	<tr><td>전화번호 : ${restaurant.resNumber}</td><td>평점 : ${restaurant.resScore}</td></tr>
	<tr><td colspan="2">주소 : ${restaurant.resLoc}</td></tr>
	<tr><td colspan="2">내용 : ${restaurant.resContent}</td></tr>
		
	
	</table>

	<%i++; %>
	
	<%-- 
	<table border="1">
		<tr>
			<td><c:out value="${restaurant.locName}" />
			</td>
		</tr>
		<tr>
			<td><c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="loc" />
				<a href="${loc}"><c:out value="${restaurant.resName}" /></a></td>
		</tr>
		<tr>
			<td><c:out value="${restaurant.resScore}"/></td>
		</tr>
	</table>
	 --%>
	
	</c:forEach>
	<br>
<br>
<br>
<br>
<br>

<hr>
<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
