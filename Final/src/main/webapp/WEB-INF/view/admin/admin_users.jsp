<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<button type="submit" id="search" name="search">검색</button>
	<br>
	<br>
	<%
		int i = 1;
	%>

	<table border="1" onclick="location.href='${url}'"
		style="cursor: pointer;">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
		<c:forEach items="${userList}" var="user">
			<c:url value="/admin/users_list?userId=${user.userId}" var="url" />
			<tr>

				<td><c:out value="<%=i%>" /></td>
				<td><c:out value="${user.userId}" /></td>
				<td><c:out value="${user.userPass}" /></td>
				<td><c:out value="${user.userName}" /></td>
				<td><c:out value="${user.userGender}" /></td>
				<td><c:out value="${user.userEmail}" /></td>
				<td><c:out value="${user.userPhone}" /></td>
				<td><c:out value="${user.userRegdate}" /></td>
				<td><c:out value="${user.userUpdatedate}" /></td>
			</tr>
			<%
				i++;
			%>
		</c:forEach>
	</table>
	<br>
	<br>



</body>
</html>