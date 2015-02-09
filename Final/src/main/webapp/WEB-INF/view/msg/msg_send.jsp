<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="mybabthis.entity.Msg" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:url value="/msg/sended" var="action"></c:url>
	<form:form modelAttribute="msg" method="post" action="${action}">
	<!-- 여기는 세션으로 보낼사람 불러와야함  -->
	<label>보낸사람</label> : <form:input path="sender"/>
		<br>
		<label>받는사람</label> : <form:input path="receiver" value="${receiver}" />
		<br>
		<label>내용</label> : <form:input path="msgContent"/>
		<br>
		
	<button type="submit" name="proceed">쪽지 전송</button>
	</form:form>



</body>
</html>