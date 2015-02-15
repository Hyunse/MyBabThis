<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" media="screen" type="text/css" />

</head>
<body>

<div class="container">

  <div id="login-form">
  <fieldset>
  <h3>Login</h3>
		<c:url value="/login/confirm" var="action"></c:url>
		<form:form modelAttribute="loginCheck" method="post" action="${action}">
			<form:input class="Id" path="userId" value="ID" onBlur="if(this.value=='')this.value='ID'" onFocus="if(this.value=='ID')this.value='' " />
			<br>
			<form:password  path="userPass" value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' " />
			<br>

			<button type="submit">Login</button>
			</form:form>
			<c:url value="/join" var="join"/>
			<a href="${join}"><button>Join us</button></a>
		
		<c:url value="/email" var="email" />
		<br><br>
		<footer class="clearfix">
		  <p><span class="info">?</span><a href="${email}">Forgot Password</a>
 		</footer>
 </fieldset>

  </div> 
</div>

</body>
</html>