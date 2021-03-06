<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mybabthis.entity.Review"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 리뷰수정</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resource/editor/js/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">
$(function(){
    //전역변수
    var obj = [];               
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "editor",
        sSkinURI: "<%=request.getContextPath()%>/resource/editor/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : false,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : false, 
        }
    });
    //전송버튼
    $("#modify").click(function(){
    	
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#frm").submit();
    });
});
</script>

<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<c:url value="/review/updated" var="action" />
	<form:form modelAttribute="review" method="post" action="${action }" id="frm">
	<form:hidden path="resNo" readonly="true"/>
	<form:hidden path="reviewNo" readonly="true"/><br>
	<form:hidden path="userId" readonly="true"/><br>
		<!-- 수정불가능 -->
		<%-- 
<h2>리뷰수정</h2>

<c:url value="/review/updated" var="action"/>
<form:form modelAttribute="review" method="post" action="${action }" id="frm">
<!-- 수정불가능 -->
<label>맛집번호</label> : <form:input path="resNo" readonly="true"/><br>
<label>리뷰번호</label> : <form:input path="reviewNo" readonly="true"/><br>
<label>사용자ID</label> : <form:input path="userId" readonly="true"/><br> --%>
		<!-- 수정가능 -->
		<div class="table-responsive">
			<table class="table">
				<%-- <tr style="width: 100%">
					<th width="10%" style="text-align: center">맛집번호</th>
					<td><form:input path="resNo" readonly="true" /></td>
				</tr> 
				<tr>
					<th style="text-align: center">작성자</th>
					<td><form:input path="userId" readonly="true" /></td>
				</tr>--%>
				<tr>
				<td colspan="2"  class="border-top-style"><strong> 리뷰수정</strong>
				</td>
				</tr>
				<tr>
					<th style="text-align: center">제목</th>
					<td><form:input path="reviewTitle" size="100%" /></td>
				</tr>
				<tr style="width: 100%">
					<th style="text-align: center; width: 10%">리뷰평가</th>
					<td><form:radiobutton path="reviewScore" value="0" />0 <form:radiobutton
							path="reviewScore" value="1" />1 <form:radiobutton
							path="reviewScore" value="2" />2 <form:radiobutton
							path="reviewScore" value="3" />3 <form:radiobutton
							path="reviewScore" value="4" />4 <form:radiobutton
							path="reviewScore" value="5" />5</td>
				<tr>
					<th style="text-align: center">내용</th>
					<td><form:input path="reviewContent" id="editor" rows="20"
							cols="150" style=" width:100%; min-width: 600px; min-height:600px;"></form:input></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br>
						<button type="button" id="modify" class="btn btn-default">
							<span class="glyphicon glyphicon-ok"></span> 완료</button>
					</td>
				</tr>
				</table>
				</div>
				</form:form>
				
<br>
<br>
<br>

<hr>
<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
