<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/WEB-INF/view/header.jsp" />
<body>
번호 :  ${boardDetail.boardNo} <br>
제목 : ${boardDetail.boardTitle} <br>
작성자 : ${boardDetail.userId } <br>
내용 : ${boardDetail.boardContent } <br>

<c:url value= "/board/update?boardNo=${boardDetail.boardNo}" var="goEdit"/> 
<a href="${goEdit}"><button type="submit">수정</button></a>
	
</body>
</html>