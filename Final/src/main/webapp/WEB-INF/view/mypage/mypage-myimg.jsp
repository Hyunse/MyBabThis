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
<h2>프로필 사진</h2>
<c:url value="/upload/user" var="userimg" />
<form method="post" enctype="multipart/form-data" action="${userimg}">
	이미지 선택 : <input type="file" name="uploadFile">
	<button type="submit">upload</button>	
</form>
</body>
</html>