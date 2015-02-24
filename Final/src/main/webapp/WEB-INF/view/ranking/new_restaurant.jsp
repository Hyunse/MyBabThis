<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	page import="java.util.*, mybabthis.entity.Board"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/normalize_newres.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/demo_newres.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/component_newres.css" />

<body>
	<!-- <h2>NEW 맛집!</h2> -->
		<table align ="center">
		<tr>
		<c:forEach items="${restaurants }" var="restaurant">
		<c:url value="/restaurant/view?resNo=${restaurant.resNo}" var="url" />
			<td>
		
			<section class="demo-3">
				<div class="grid">
					<div class="box">
					<a href="${url }">
						<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
							<line class="top" x1="0" y1="0" x2="900" y2="0" />
							<line class="left" x1="0" y1="300" x2="0" y2="-600" />
							<line class="bottom" x1="300" y1=300 x2="-600" y2="300" />
							<line class="right" x1="300" y1="0" x2="300" y2="900" />
						</svg>
						<span style="margin: 0;"><span style="text-align: left; color: red; width: 50%; display: inline-block;">NEW</span><span style=" width: 50%;  display: inline-block;"><c:out value="${restaurant.resName }" /></span></span>
						<img
							src="<%=request.getContextPath()%>/upload/${restaurant.resImg }"
						 	width ="300px" height ="230px">
						<span ><c:out value="${restaurant.locName }" /></span>
							</a>
					</div>
				</div>
			
			</section>
			
			</td>
			</c:forEach>
			</tr>
		</table>
<!-- <section class="demo-3">
				<h2>Frame</h2>
				<div class="grid">
					<div class="box">
						<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%">
							<line class="top" x1="0" y1="0" x2="900" y2="0"/>
							<line class="left" x1="0" y1="460" x2="0" y2="-920"/>
							<line class="bottom" x1="300" y1="460" x2="-600" y2="460"/>
							<line class="right" x1="300" y1="0" x2="300" y2="1380"/>
						</svg>
						<h3>B</h3>
						<span>2012</span>
						<span>Marmalade, Honey</span>
					</div> -->
</body>
</html>