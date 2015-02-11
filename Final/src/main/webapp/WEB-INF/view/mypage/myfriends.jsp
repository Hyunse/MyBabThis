<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<select id="select">
		<option value="userName">이름</option>
		<option value="userId">아이디</option>
		<option value="userRegdate">등록일</option>
		<option value="userUpdatedate">수정일</option>
		<option value="userGrade">등급</option>
		<option value="userGender">성별</option>
	</select>
	<input type="text" id="searchWord" name="searchWord">
	<input type="button" id="search" name="search" value="검색">
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
		<c:forEach items="${users}" var="user">
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
</body>
</html>