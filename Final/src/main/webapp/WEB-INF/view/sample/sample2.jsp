<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/themes/redmond/jquery-ui-1.7.1.custom.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/themes/ui.jqgrid.css" />
    <script src="/jqgrid/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="/jqgrid/js/i18n/grid.locale-kr.js" type="text/javascript"></script>
    <script src="/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/themes/ui.datepicker.css" />
    <script type="text/javascript" src="/jqui/development-bundle/ui/ui.datepicker.js"></script>
    <script type="text/javascript" src="/jqui/development-bundle/ui/i18n/ui.datepicker-ko.js"></script>
</head>

<body>

 <table id="gridList_users"></table>
    <div id="jqGridPager"></div>
    
<script>
//gachon게시판 리스트	
$(document).ready(function(){
jQuery("#gridList_users").jqGrid({
	datatype: "local",
	height: 500,
	width:$('#container').width(),
   	colNames:['아이디', '이름', '가입일', '성별'],
   	colModel:[
  	   		{name:'userId',index:'userId', width:80, align:"center", sorttype:"integer", editable:true, editrules: {required: true}, formoptions: {label : "* 번호"}},
	   		{name:'userName',index:'userName', width:500, editable:true, editrules: {required: true}, formoptions: {label : "* 제목"}},
	   		{name:'userRagdate',index:'userRagdate', align:"center", width:90, editable:true},
	   		{name:'userGender',index:'userGender', width:100, align:"center",editable:false},
	],
	rowNum:100,
   	rowList:[100,200,300],
	mtype: "GET",
   	pager: "#gridListToolbar_gachon",
   	sortname: 'userId',
    sortorder: "desc",
    viewrecords: true,
    caption:"회원정보",
 	ondblClickRow: function(rowid, iRow, iCol, e){
 		//rowID = rowid;
    	//jsonData = $('#gridList_gachon').getRowData(rowID);
    	//selected_board_no = jsonData.board_no;	    	
    }
});
jQuery("#gridList_users").jqGrid("navGrid", "#gridListToolbar_gachon",{edit: false, add: false, del: false, view: false, search: true, refresh: false},
		{}, {}, {}, {}, {});
});	




</body>
</html>