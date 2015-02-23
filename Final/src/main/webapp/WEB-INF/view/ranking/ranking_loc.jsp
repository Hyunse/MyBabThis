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
	
	
	
	<h1>맛집 top5</h1>
<%int i=1; %>
	<c:forEach items="${restaurants }" var="restaurant">
	
	
	<table class="tableRank">
	<tr><td colspan="3"><h3 style="margin-left: 10%"><%=i %> 위</h3></td></tr>
	<tr><td rowspan="5" width="310px" style="text-align: center;">
	<img src="<%=request.getContextPath()%>/upload/${restaurant.resImg}" onLoad="reSizes(this);"/>
	</td>
	<td>지역 : ${restaurant.locName}</td><td>
	<c:url value="/restaurant/edit?resNo=${restaurant.resNo}"
					var="url" /> <a href="${url }"><button>편집</button></a> <c:url
					value="/restaurant/delete?resNo=${restaurant.resNo}&locName=${restaurant.locName }"
					var="url" /> <a href="${url }"><button>삭제</button></a>
	<a href="<%=request.getContextPath()%>/favorite/create?resNo=${restaurant.resNo}&userId=${loginUser.userId}"><button>즐겨찾기</button></a></td>
	</tr>
	<tr><td>가게이름 : ${restaurant.resName}</td><td>분류 : ${restaurant.resKind}</td></tr>
	<tr><td>전화번호 : ${restaurant.resNumber}</td><td>평점 : ${restaurant.resScore}</td></tr>
	<tr><td colspan="2">주소 : ${restaurant.resLoc}</td></tr>
	<tr><td colspan="2">내용 : ${restaurant.resContent}</td></tr>
		
	
	</table>
	<br><br>
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
</body>
</html>