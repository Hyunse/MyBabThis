<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로고</h1>
	<div id="wrapper">
		<h1>헤더 부분</h1>
		<div id="header_info">
			<c:if test="${!empty loginUser }">
		<img  width="40" height="40" src="<%=request.getContextPath()%>/upload/${loginUser.userImg}">
		${loginUser.userId }님 반갑습니다. 
		<c:url value="/logout" var="logout" />
				<a href="${logout}"><button>로그아웃</button></a>
				<c:url value="/mypage" var="mypage" />
				<a href="${mypage}"><button>개인정보</button></a>
			</c:if>
			<c:if test="${empty loginUser }">

				<c:url value="/login" var="login" />
				<a href="${login}"><button>로그인 하기</button></a>
				<c:url value="/join" var="join" />
				<a href="${join}"><button>가입 하기</button></a>
			</c:if>
		</div>
	</div>
	<c:url value="/board/list" var="board" />
	<c:url value="/meeting/list" var="meeting"/>
	<c:url value="/ranking/list" var="ranking"/>
	<c:url value="/main" var="main"/>
	<table border="1">
		<tr>
			<td><a href="${main}">메인</a></td>
			<td><a href="${ranking}">맛집랭킹</a></td>
			<td><a href="${meeting}">번개모임</a></td>
			<td><a href="${board}">자유게시판</a></td>
			<td>이용규칙</td>
		</tr>

	</table>

</body>
</html>