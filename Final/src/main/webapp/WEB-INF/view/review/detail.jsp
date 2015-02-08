<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>리뷰상세</title>
</head>
<body>
<h2>리뷰상세</h2>
<c:url value="/review/list?resNo=${review.resNo }" var="url"></c:url>
<a href="${url}"><button>목록 보기</button></a>

<c:url value="/review/edit?reviewNo=${review.reviewNo }" var="url"></c:url>
<a href="${url}"><button>수정</button></a>

<c:url value="/review/delete?reviewNo=${review.reviewNo }" var="url"></c:url>
<a href="${url}"><button>삭제</button></a>
<br>
<label>작성자 : </label><c:out value="${review.userId }"/><br>
<label>작성일 : </label><c:out value="${review.reviewUpdatedate }"/><br>
<label>맛평가 : </label><c:out value="${review.reviewScore }"/><br>
<label>내용 : </label><c:out value="${review.reviewContent}"/><br>
</body>
</html>