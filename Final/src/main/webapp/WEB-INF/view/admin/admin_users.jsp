<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Users" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
<h1>회원관리</h1>
<jsp:include page="/WEB-INF/view/admin/left.jsp" />
<input type="text" id="user" name="user">
<button type="submit" id="search" name="search">검색</button><br>
<%int i=0; %>
<c:forEach items="${users }" var="user">
<c:url value="/admin/users_list?userId=${user.userId}" var="url"/>
<table border="1" onclick="location.href='${url}'" style="cursor:pointer;">
<tr><th> 번호</th><th>아이디</th><th>이름</th>
<tr>

<td><c:out value="${i}"/></td>
<td><c:out value="${user.userId}"/></td>
<td><c:out value="${user.userName}"/></td>
</tr>
<%i++; %>
</table>
<br><br>
</c:forEach>

</body>
</html>