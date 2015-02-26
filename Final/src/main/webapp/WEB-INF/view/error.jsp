<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#error{
	font-size: 300px;
	
	color: red;
}
#errorname{
	font-size : 50px;
	color : red;
}
#sorry1{
	font-size: 30px;
	font-weight: bold;
}
#sorry2{
	font-size: 20px;
	color: gray;
}
</style>
<body>

<jsp:include page="/WEB-INF/view/header.jsp" />
<div align="center">
<div id="error"><span class="glyphicon glyphicon-exclamation-sign"></span>
</div>
<div id="errorname">페이지 오류</div>
<div id="sorry1">시스템 문제로 요청하신 페이지를 표시할 수 없습니다. </div>
<div id="sorry2">죄송합니다. 요청하신 페이지를 실행하는데 문제가 발생했습니다. 링크 정보를 다시 확인해 주세요.</div>
<br>

<c:url value="/main" var="main" />
<a href="${main}"><h1 style="font-weight: bold;">메인으로</h1></a>
</div>
<br>
<br>
<br>
<br>

<hr>
<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>