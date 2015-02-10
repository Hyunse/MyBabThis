<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Users"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/WEB-INF/view/header.jsp" />
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script language="javascript"> 
var attr;
<%-- select box에서 선택한 value 값을 가져옴 --%>
function selected(opt) // select box에서 받은 opt는 object
{ 
 if(opt.options[opt.selectedIndex].value) {  		// 셀렉트 option에 값이 있으면 실행 
	 attr = opt.options[opt.selectedIndex].value; 	// value값을 가져오기 
    } 
} 

$(document).ready(function(){
$("#search").click(function(){

	var word = $('#searchWord').val();
	$(location).attr('href',"<%=request.getContextPath()%>/admin/users?" + attr +"="+word); 
});
});



</script>

<body>
	<h1>회원관리</h1>
	<jsp:include page="/WEB-INF/view/admin/left.jsp" />
	<label>맛집장르</label> :
	<%-- selected(this) : 자기자신을 스크립트로 보냄 --%>
	<select id="select" onChange="selected(this)">
		<option value="">▒ 선택 ▒ </option>
		<option value="userId">아이디</option>
		<option value="userName">이름</option>
		<option value="userEmail">이메일</option>
		<option value="userRegdate">등록일</option>
		<option value="userUpdatedate">수정일</option>
		<option value="userGrade">등급</option>
		<option value="userGender">성별</option>
	</select>
	<input type="text" id="searchWord" name="searchWord">
	<input type="button" id="search" name="search" value="검색" >
	<br>
	<br>
${count }
	<table border="1">
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>성별</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
		<%-- <c:if test="${empty user }"> --%>
		<c:if test="${count > 2}"> 
		<c:forEach items="${userList}" var="user" varStatus="status">
			<%-- <c:url value="/admin/users_list?userId=${user.userId}" var="url" /> --%>
			<tr>

				<td><c:out  value="${status.count}" /></td>
				<td><c:out value="${user.userId}" /></td>
				<td><c:out value="${user.userPass}" /></td>
				<td><c:out value="${user.userName}" /></td>
				<td><c:out value="${user.userGender}" /></td>
				<td><c:out value="${user.userEmail}" /></td>
				<td><c:out value="${user.userPhone}" /></td>
				<td><c:out value="${user.userRegdate}" /></td>
				<td><c:out value="${user.userUpdatedate}" /></td>
			</tr>
		</c:forEach>
		</c:if>
		
		<c:if test="${count == 1}"> 
			<%-- <c:url value="/admin/users_list?userId=${user.userId}" var="url" /> --%>
			
			<tr>

				<td><c:out value="<%=1 %>" /></td>
				<td><c:out value="${user.userId}" /></td>
				<td><c:out value="${user.userPass}" /></td>
				<td><c:out value="${user.userName}" /></td>
				<td><c:out value="${user.userGender}" /></td>
				<td><c:out value="${user.userEmail}" /></td>
				<td><c:out value="${user.userPhone}" /></td>
				<td><c:out value="${user.userRegdate}" /></td>
				<td><c:out value="${user.userUpdatedate}" /></td>
			</tr>
			
		
		</c:if>
	</table>
	
	
	<br>
	<br>



</body>
</html>