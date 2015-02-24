<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/header.jsp" />
<center>
<img src="<%=request.getContextPath()%>/upload/fail.jpg" />
<h1>로그인 실패..</h1>
</center>
</body>
</html>