<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/bootstrap-theme.css" />
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<style type="text/css">
table{
align: center;
text-align: center;
width: 
}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/mypage/mypage_list.jsp" />
	<br>
	<br>
	<table style="width: 60%; text-align: left;" align="center" >
		<tr>
			<td style="width:10%;"><select id="select" class="form-control" >
					<option value="userName">이름</option>
					<option value="userId">아이디</option>
					<option value="userRegdate">등록일</option>
					<option value="userGrade">등급</option>
			</select></td>
			<td style="width:30%;"><input type="text" id="searchWord" name="searchWord"
				class="form-control"></td>
			<td><input type="button" id="search" name="search" value="검색"
				class="btn btn-default"></td>
		</tr>
	</table>

	<%
		int i = 1;
	%>


	<table class="table table-hover" style="text-align: center; width: 60%;">
		<tr>
			<th style="width: 10%">번호</th>
			<th style="width: 20%">아이디</th>
			<th style="width: 20%">이름</th>
			<th style="width: 10%">등급</th>
			<th style="width: 20%">등록일</th>
			<th style="width: 20%"></th>
		</tr>
		<c:forEach items="${users}" var="user">
<%-- 			<c:url value="/admin/users_list?userId=${user.userId}" var="url" />
			<tr onclick="location.href='${url}'" style="cursor: pointer;"> --%>
			<tr>
				<td><c:out value="<%=i%>" /></td>
				<td><c:out value="${user.userId}" /></td>
				<td><c:out value="${user.userName}" /></td>
				<td><c:out value="${user.userGrade}" /></td>
				<td>
				<c:set value="${user.userRegdate }" var="userRegdate"/>
				<fmt:formatDate value="${userRegdate }" type="date" dateStyle="short"/>&nbsp;&nbsp;
				<fmt:formatDate value="${userRegdate }" type="time" pattern="hh:MM"/>
				</td>
				<td>
				<c:url value="/Final/msg/send?receiver=${user.userId}" var="sendMsg" />
					<a href="${sendMsg }">
						<button type="button" class="btn btn-default" >
							<p class="text-info"><span class="glyphicon glyphicon-send"></span>&nbsp;&nbsp;쪽지</p>
						</button>
					</a>
				<c:url value="/friend/delete?userId=${loginUser.userId}&friendId=${user.userId}" var="goDelete" />
					<a href="${goDelete}">
						<button type="button" class="btn btn-default" >
							<p class="text-danger"><span class="glyphicon glyphicon-trash"></span>&nbsp;&nbsp;삭제</p>
						</button>
					</a>
				</td>
			</tr>	
		
			<%
				i++;
			%>
		</c:forEach>
	</table>
</body>
</html>