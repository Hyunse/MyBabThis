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
<body>
<h2>NEW 맛집!</h2>
<table border="1">
	<c:forEach items="${restaurants }" var="restaurant">
		<tr>
			<td><c:out value="${restaurant.resNo }" /></td>
		
			<td><c:out value="${restaurant.resKind }" /></td>
			<td><c:out value="${restaurant.resName }" /></td>
			<td><%-- <img src="<%=request.getContextPath()%>/upload/${restaurant.resImg }" width="100" height="100"> --%></td>
			<td><c:out value="${restaurant.resUpdatedate }" /></td>
			<td>	<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url"/>
				<a href="${url }"><button>GO</button></a>
			</td>	
			</tr>
	</c:forEach>
	
</table>
</body>
</html>