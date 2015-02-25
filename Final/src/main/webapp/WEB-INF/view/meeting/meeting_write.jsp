<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>번개모임 글쓰기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
	<c:url value="/meeting/confirmed" var="write"></c:url>
	<center>
		<form:form modelAttribute="boardInfo" method="post" id="frm"
			action="${write}" style="margin-left: 5em">
			<form:hidden path="userId" value="${loginUser.userId }" />
			<form:hidden path="boardType" value="M" />
			<div class="table-responsive">
				<table class="table">

					<tr>
						<td colspan="2" class="border-top-style"><h3>
								<strong>번개모임 글쓰기</strong>
							</h3></td>
					</tr>
					<tr style="width: 100%">
						<th width=10% style="text-align: center">제목</th>
						<td width=90%><form:input path="boardTitle" size="80%" /></td>
					</tr>

					<tr>
						<th style="text-align: center">내용</th>
						<td><form:textarea path="boardContent" id="editor"
								style=" width:100%; min-height: 500px; min-width: 600px " /></td>
					</tr>


					<tr>
						<td colspan="2" align="center"><br>
							<button type="button" id="savebutton" name="finish"
								class="btn btn-default">
								<span class="glyphicon glyphicon-ok"></span> 완료
							</button></td>
					</tr>
				</table>
			</div>
		</form:form>

	</center>

	<script src="../js/classie_input.js"></script>
	<script>
		(
				function() {
					// trim polyfill : https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/Trim
					if (!String.prototype.trim) {
						(function() {
							// Make sure we trim BOM and NBSP
							var rtrim = /^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;
							String.prototype.trim = function() {
								return this.replace(rtrim, '');
							};
						})();
					}

					[].slice.call(
							document.querySelectorAll('input.input__field'))
							.forEach(
									function(inputEl) {
										// in case the input is already filled..
										if (inputEl.value.trim() !== '') {
											classie.add(inputEl.parentNode,
													'input--filled');
										}

										// events:
										inputEl.addEventListener('focus',
												onInputFocus);
										inputEl.addEventListener('blur',
												onInputBlur);
									});

					function onInputFocus(ev) {
						classie.add(ev.target.parentNode, 'input--filled');
					}

					function onInputBlur(ev) {
						if (ev.target.value.trim() === '') {
							classie.remove(ev.target.parentNode,
									'input--filled');
						}
					}
				})();
	</script>
	<jsp:include page="/WEB-INF/view/footer.jsp" />
</body>
</html>
