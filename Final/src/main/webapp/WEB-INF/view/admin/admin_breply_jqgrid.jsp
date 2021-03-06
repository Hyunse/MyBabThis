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
    jQuery("#JQ_list_forBreply").jqGrid({
        url:'<%=request.getContextPath()%>/admin/Breply/getList',
        editurl:'<%=request.getContextPath()%>/admin/Breply/deleteOne',
        datatype: 'json',
        mtype: 'GET',
        colNames:['댓글번호','댓글내용', /* '작성일', '수정일', */ '게시글번호', '작성자'],
        colModel :[
          {name:'breplyNo', index:'breplyNo', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'breplyContent', index:'breplyContent', width:100, align:"center", editable:true},
          /* {name:'breplyRegdate', index:'breplyRegdate', width:100, align:"center", editable:true},
          {name:'breplyUpdatedate', index:'breplyUpdatedate', width:100, align:"center", editable:true}, */
          {name:'boardNo', index:'boardNo', width:100, align:"center", editable:true},
          {name:'userId', index:'userId', width:100, align:"center", editable:true},
        ],
        pager:'#navGridForBreply',
        rowNum: 10,
        rowList: [5, 10, 15],
        sortname: 'breplyNo',
        sortorder: 'desc',
        viewrecords: true,
        caption: '기타게시판 댓글정보',
		height: 300,
		width:$('.container').width(),
        loadonce:false,
        ondblClickRow: function(rowid, iRow, iCol, e){
            //jsondata = $('#JQ_list').getRowData(rowid);
        	//selected_userId = jsonData.userId;
        	//mypage
        },
        gridComplete:function(response){
        }
   });
    
    jQuery("#JQ_list_forBreply").jqGrid('navGrid',"#navGridForBreply",{edit:false,add:false,del:true,search:true,refresh:true}
    );
   
    jQuery("#JQ_list_forBreply").trigger("reloadGrid");
    
});


</script>
</head>
<body>
<br>
<jsp:include page="/WEB-INF/view/header.jsp" />
<jsp:include page="/WEB-INF/view/admin/admin_menu.jsp" />
<jsp:include page="/WEB-INF/view/admin/admin_board_jqgrid.jsp" />
<br>
<div class="container">
<table id="JQ_list_forBreply"></table>
<div id="navGridForBreply"></div> 
</div>
</body>
</html>