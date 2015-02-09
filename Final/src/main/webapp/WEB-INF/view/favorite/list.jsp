<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>즐겨찾기목록</h2>


<c:forEach items="${resNos }" var="resNo" >
	<table border="1">
		<tr>
		    <th>맛집번호</th>
		    <th>삭제</th>
		   
		</tr>
		
		
			<tr>
				<td><c:out value="${resNo}" /></td>
				   <td>
				   
				   <c:url value="/favorite/delete" var="action"></c:url>
	<form:form modelAttribute="favorite" method="post" action="${action }" >
		 <form:hidden path="resNo" value="${resNo}"/>
		<form:hidden path="userId" value="choeh"/>
		<button type="submit" name="delete">삭제</button>
	</form:form>
		    
			
			
		     </td>
			</tr>
			</table>
			</c:forEach>
			
</body>
</html>