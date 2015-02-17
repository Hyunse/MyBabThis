<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="screen" href="../css/smoothness/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="../css/ui.jqgrid.css" />
<script src="../js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="../js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="../js/jquery.jqGrid.src.js" type="text/javascript"></script>
<script src="../js/i18n/grid.locale-kr.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    jQuery("#JQ_list_forReview").jqGrid({
        url:'<%=request.getContextPath()%>/admin/Review/getList',
        editurl:'<%=request.getContextPath()%>/admin/Review/deleteOne',
        datatype: 'json',
        mtype: 'GET',
        colNames:['리뷰번호',"점수","내용", "작성일", "수정일", "맛집페이지번호", "작성자"],
        colModel :[
          {name:'reviewNo', index:'reviewNo', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'reviewScore', index:'reviewScore', width:100, align:"center", editable:true},
          {name:'reviewContent', index:'reviewContent', width:100, align:"center", editable:true},
          {name:'reviewRegdate', index:'reviewRegdate', width:100, align:"center", editable:true},
          {name:'reviewUpdatedate', index:'reviewUpdatedate', width:100, align:"center", editable:true},
          {name:'resNo', index:'resNo', width:100, align:"center", editable:true},
          {name:'userId', index:'userId', width:100, align:"center", editable:true},
        ],
        pager:'#navGridForReview',
        rowNum: 10,
        rowList: [5, 10, 15],
        sortname: 'reviewNo',
        sortorder: 'desc',
        viewrecords: true,
        caption: '맛집페이지 리뷰정보',
		height: 300,
		width:$('.content-current').width(),
        loadonce:false,
        ondblClickRow: function(rowid, iRow, iCol, e){
            //jsondata = $('#JQ_list').getRowData(rowid);
        	//selected_userId = jsonData.userId;
        	//mypage
        },
        gridComplete:function(response){
        }
   });
    
    jQuery("#JQ_list_forReview").jqGrid('navGrid',"#navGridForReview",{edit:false,add:false,del:true,search:true,refresh:true}
    );
   
    jQuery("#JQ_list_forReview").trigger("reloadGrid");
    
});


</script>
</head>
<body>
<table id="JQ_list_forReview"></table>
<div id="navGridForReview"></div> 
</body>
</html>