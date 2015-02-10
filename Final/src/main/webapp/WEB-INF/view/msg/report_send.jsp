<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="mybabthis.entity.Msg" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쪽지보내기</title>
</head>
<body>
<h2>쪽지보내기</h2>
<c:url value="/msg/reportsended" var="action"></c:url>
	<form:form modelAttribute="msg" method="post" action="${action}">
	<label>보낸사람</label> : <form:input path="sender" value="${loginUser.userId}"/>
		<br>
		<label>내용</label> : <form:input path="msgContent"/>
		<br>
		<label>게시판종류</label> : <form:input path="writeType" value="${writeType} }" readonly="true"/>
		<br>
		
	<button type="submit" name="proceed">쪽지 전송</button>
	</form:form>



</body>
</html>