<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document).ready(function(){
$("#search").click(function(){

	var name = $('#resName').val();
	
	<%-- $.get("<%=request.getContextPath()%>/restaurant/list?resName="+name); --%>
	$(location).attr('href',"<%=request.getContextPath()%>/restaurant/list?resName="+name);
});
});

</script>

<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<hr>
	
	<input type="text" id="resName" name="resName">
	<button type="submit" id="search" name="search">검색</button><br>
	<h1>환영합니다 메인입니다.</h1>
	<c:url value="/restaurant/list?locName=건대" var="loc" />
	<a href="${loc }"><button type="submit">건대</button></a>
	<c:url value="/restaurant/list?locName=강남" var="loc" />
	<a href="${loc }"><button type="submit">강남</button></a>
</body>
</html>