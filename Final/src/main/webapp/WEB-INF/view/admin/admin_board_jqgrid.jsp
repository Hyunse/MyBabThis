<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/smoothness/jquery-ui-1.10.4.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="<%=request.getContextPath() %>/css/ui.jqgrid.css" />
<script src="<%=request.getContextPath() %>/js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/jquery.jqGrid.src.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/i18n/grid.locale-kr.js"></script>
<!-- <script src="http://code.jquery.com/jquery-latest.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){
    jQuery("#JQ_list_forBoard").jqGrid({
        url:'<%=request.getContextPath()%>/admin/Board/getList',
        editurl:'<%=request.getContextPath()%>/admin/Board/deleteOne',
        datatype: 'json',
        mtype: 'GET',
        colNames:['게시글번호','게시글제목', '게시글내용', /* '등록일', '수정일', */ '게시글종류', '작성자'],
        colModel :[
          {name:'boardNo', index:'boardNo', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'boardTitle', index:'boardTitle', width:100, align:"center", editable:true},
          {name:'boardContent', index:'boardContent', width:100, align:"center", editable:true},
         /*  {name:'boardRegdate', index:'boardRegdate', width:100, align:"center", editable:true},
          {name:'boardUpdatedate', index:'boardUpdatedate', width:100, align:"center", editable:true}, */
          {name:'boardType', index:'boardType', width:100, align:"center", editable:true},
          {name:'userId', index:'userId', width:100, align:"center", editable:true},
        ],
        pager:'#navGridForBoard',
        rowNum: 10,
        rowList: [5, 10, 15],
        sortname: 'rreplyNo',
        sortorder: 'desc',
        viewrecords: true,
        caption: '기타게시글정보',
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
    
    jQuery("#JQ_list_forBoard").jqGrid('navGrid',"#navGridForBoard",{edit:false,add:false,del:true,search:true,refresh:true}
    );
   
    jQuery("#JQ_list_forBoard").trigger("reloadGrid");
    
});


</script>
</head>
<body>
<br>
<div class="container">
<table id="JQ_list_forBoard"></table>
<div id="navGridForBoard"></div> 
</div>
</body>
</html>