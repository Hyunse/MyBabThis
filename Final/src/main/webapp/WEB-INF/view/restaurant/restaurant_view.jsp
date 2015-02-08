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
<table border="1">
<tr><th>맛집 번호</th><th>업체명</th><th>전화번호</th><th></th><th>비고</th>
<tr>
<td><c:out value="${restaurant.resNo}"/></td>
<td><c:out value="${restaurant.locName}"/></td>
<td><c:out value="${restaurant.resName}"/></td>
<td><c:out value="${restaurant.resContent}"/></td>
<td>
<c:url value="/restaurant/edit?resNo=${restaurant.resNo}" var="url"/>
<a href ="${url }"><button>편집</button></a>
<c:url value="/restaurant/delete?resNo=${restaurant.resNo}" var="url"/>
<a href ="${url }"><button>삭제</button></a>
</td></tr>

</table>


</body>
</html>