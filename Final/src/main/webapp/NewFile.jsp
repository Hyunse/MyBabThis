<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jqGrid TEST</title>
<link rel="stylesheet" type="text/css" media="screen" href="css/smoothness/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="css/ui.jqgrid.css" />

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.src.js" type="text/javascript"></script>
<script src="js/i18n/grid.locale-kr.js"></script>

<script type="text/javascript">
jQuery(document).ready(function(){
	 
    jQuery("#JQ_list").jqGrid({
        url:'<%=request.getContextPath()%>/a',
        datatype: 'json',
        mtype: 'GET',
        colNames:['아이디','이름','성별'],
        colModel :[
          {name:'userId', index:'userId', width:80, align:"right", sorttype:"text",sortable:true},
          {name:'userName', index:'userName', width:100, align:"center"},
          {name:'userGender', index:'userGender', width:100, align:"center"},
        ],
        pager: '#pager',
        rowNum:50,
        rowList:[10,50, 100],
        sortname: 'userId',
        sortorder: 'asc',
        viewrecords: true,
        caption: '회원정보',
        height: 'auto'
   });

});
</script>

</head>
<body>
<table id="JQ_list"></table>
</body>
</html>