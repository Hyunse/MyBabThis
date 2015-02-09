<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Restaurant" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2>맛집 리스트</h2>
<br>
<c:url value="/restaurant/write" var="url"/>
<a href ="${url }"><button>글쓰기</button></a>
<br>
<c:forEach items="${restaurants }" var="restaurant">
<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url"/>
<table border="1" onclick="location.href='${url}'" style="cursor:pointer;">
<tr><th>맛집 번호</th><th>맛집지역</th><th>맛집 이름</th><th>맛집내용</th><th>왜안나와?</th>
<tr>
<td><c:out value="${restaurant.resNo}"/></td>
<td><c:out value="${restaurant.locName}"/></td>
<td><c:out value="${restaurant.resName}"/></td>
<td><c:out value="${restaurant.resContent}"/></td>
</tr>
</table>
<br><br>
</c:forEach>



</body>



</html>