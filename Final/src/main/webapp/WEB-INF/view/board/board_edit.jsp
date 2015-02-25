<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판 글 수정</title>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resource/editor/js/HuskyEZCreator.js"
	charset="utf-8"></script>
</head>


<script>
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
				$("#savebutton").click(function() {

					//id가 smarteditor인 textarea에 에디터에서 대입
					obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
					//폼 submit
					$("#frm").submit();
				})
			})
</script>

<body>
	<jsp:include page="/WEB-INF/view/header.jsp" />
	<c:url value="/board/edit" var="action"></c:url>
	<form:form modelAttribute="editBoard" method="post" id="frm" action="${action}">
		<form:hidden path="boardNo" />
		<td><form:hidden path="userId"/>
		<br>

		<div class="table-responsive">
			<table class="table">
				<tr>
					<td colspan="2" class="border-top-style"><h3>
							<strong>자유게시판 글수정</strong>
						</h3></td>
				</tr>
				<%-- 	<tr style="width:100%" ><th width=20% style="text-align:center">글번호</th><td width=80%>
				&nbsp;&nbsp;<c:out value="${editBoard.boardNo}"></c:out></td></tr> --%>
				<tr style="width: 100%">
					<th width=10% style="text-align: center"><p class="text-muted">제목</th>
					<td width=90%><form:input path="boardTitle" size="85%" /> <%-- <tr><th style="text-align:center">작성자</th><td><form:input path="userId"/><br> --%>
				<tr>
					<th style="text-align: center"><p class="text-muted">내용</th>
					<td><form:textarea path="boardContent" id="editor" style=" width:100%; min-height: 500px; min-width: 600px "/></td>
				</tr>


				<tr>
					<td></td>
					<td style="text-align: center">
						<br><br><button type="submit" name="_event_edit"  id="savebutton" class="btn btn-default">
							<span class="glyphicon glyphicon-ok"></span> 완료
						</button>
						<!-- <button type="submit" name="_event_delete" class="btn btn-default">
							<p class="text-danger">
								<span class="glyphicon glyphicon-trash"></span> 삭제
							</p>
						</button> -->

					</td>
				</tr>
			</table>
		</div>
	</form:form>
	<br><br>
</body>
</html>