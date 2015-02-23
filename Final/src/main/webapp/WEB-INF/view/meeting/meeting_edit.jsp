<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>번개모임 글수정</title>
</head>

<body>
<div class="sticky">
	<jsp:include page="/WEB-INF/view/header.jsp" />
</div>
	<div style="margin-left: 3em;">
	<h2 style="font-family: Nanum Gothic">번개모임 글 수정</h2>
	</div>
	
	<c:url value="/meeting/edit" var="action"></c:url>
	<form:form modelAttribute="editBoard" method="post" action="${action}">
	<form:hidden path="boardNo"/><br>
	<div class="table-responsive">
			<table class="table">
				<tr style="width:100%" ><th width=10% style="text-align:center">번호</th><td width=90%>
				&nbsp;&nbsp;<c:out value="${editBoard.boardNo}"></c:out></td>
<%-- 	<p class="text-muted">번개모임 <form:hidden path="boardType" /> --%>
	<tr><th style="text-align:center">제목</th><td>&nbsp;&nbsp;<form:input path="boardTitle"/></td></tr>
	<%-- <tr><th style="text-align:center">작성자</th><td>&nbsp;&nbsp;<form:input path="userId"/></td></tr> --%>
	<tr><th style="text-align:center">내용</th><td><form:textarea path="boardContent" cols="150" rows="20"/></td></tr>
	
	<tr><td>
	<button type="submit" name="_event_edit" class="btn btn-default"> 
	<span class="glyphicon glyphicon-ok"></span> 완료</button>
	<button type="submit" name="_event_delete" class="btn btn-default">
	<p class="text-danger"><span class="glyphicon glyphicon-trash"></span> 삭제</p></button>
	
	</td><tr>
	</table>
	</div>
	</form:form>
</body>
</html>