<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />


<br>
<br>
<table onclick="location.href='${url}'" style="cursor:pointer;" class="table table-hover">
				<tr>
					<th>맛집 번호</th>
					<th>맛집지역</th>
					<th>맛집 이름</th>
					<th>맛집내용</th>
					<th></th>
				</tr>
				<c:forEach items="${restaurants }" var="restaurant">
				<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url"/>
				<tr  onclick="location.href='${url}'" style="cursor: pointer;">
					<td><c:out value="${restaurant.resNo}" /></td>
					<td><c:out value="${restaurant.locName}" /></td>
					<td><c:out value="${restaurant.resName}" /></td>
					<td><c:out value="${restaurant.resContent}" /></td>
					<td>
					<c:url value="/favorite/delete?userId=${loginUser.userId}&resNo=${restaurant.resNo}" var="delurl"/>
				<a href="${delurl}"><button class="btn btn-default ">삭제</button></a></td>
				</tr>

				</c:forEach>
				</table>
				
			

					
				

</body>
</html>