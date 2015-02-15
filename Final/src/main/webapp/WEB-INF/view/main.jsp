<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
	<script type="text/javascript" src="../jquery.maphilight.min.js"></script>
<script type="text/javascript">$(function() {
		$('.map').maphilight();
	});</script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script  src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<script>
$(document).ready(function(){

	<%-- $("#search").autocomplete({
	     
		source : function(request, response) {
			alert("체크") 
	            $.ajax({
	 
	                url : "<%=request.getContextPath()%>/autocomplete",
	                type : "post",
	                dataType : "json",
	                data: request,
	 
	                success : function(data) {
	 					alert("여기있나" + data)
	                    var result = data;
	                    response(result);
	                },
	 
	                error : function(data) {
	                    alert("에러가 발생하였습니다.")
	                }
	            });
	        }
	    }); --%>
	
/* 	$( "#search" ).autocomplete({
	      source: availableTags
	    }); */
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
	<input type="button" id="search" value="검색"><br>
	
	<!-- 지도 이미지 버튼 넣기 -->
	<img src="<%=request.getContextPath()%>/upload/map.PNG" border="0" usemap="#map" 
	 >
	<map name="map">
	    <area shape="rect" coords="150,90,220,220" href="#" title="신촌"  >
	    <area shape="rect" coords="86,262,299,390" href="#" title="오른쪽 사진">
	    <area shape="rect" coords="304,263,520,394" href="#" title="왼쪽 사진">
	</map>
	
	<h1>환영합니다 메인입니다.</h1>
	<c:url value="/restaurant/list?locName=건대" var="loc" />
	<a href="${loc }"><button type="submit">건대</button></a>
	<c:url value="/restaurant/list?locName=강남" var="loc" />
	<a href="${loc }"><button type="submit">강남</button></a>
	<c:url value="/restaurant/list?locName=송파" var="loc" />
	<a href="${loc }"><button type="submit">송파</button></a>
	<c:url value="/restaurant/list?locName=대학로" var="loc" />
	<a href="${loc }"><button type="submit">대학로</button></a>
	<c:url value="/restaurant/list?locName=신림" var="loc" />
	<a href="${loc }"><button type="submit">신림</button></a>
	<c:url value="/restaurant/list?locName=홍대" var="loc" />
	<a href="${loc }"><button type="submit">홍대</button></a>
	<c:url value="/restaurant/list?locName=신촌" var="loc" />
	<a href="${loc }"><button type="submit">신촌</button></a>
	<c:url value="/restaurant/list?locName=종로" var="loc" />
	<a href="${loc }"><button type="submit">종로</button></a>
	<c:url value="/restaurant/list?locName=영등포" var="loc" />
	<a href="${loc }"><button type="submit">영등포</button></a>
		<c:url value="/restaurant/list" var="loc" />
	<a href="${loc }"><button type="submit">전체보기</button></a>
	
	
	
	<hr>
	<jsp:include page="/WEB-INF/view/ranking/new_restaurant.jsp" />
	<hr>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
	
	
</body>
</html>
