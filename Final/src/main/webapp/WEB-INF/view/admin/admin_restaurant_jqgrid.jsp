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
    jQuery("#JQ_list_forRestaurant").jqGrid({
        url:'<%=request.getContextPath()%>/admin/Restaurant/getList',
        editurl:'<%=request.getContextPath()%>/admin/Restaurant/deleteOne',
        datatype: 'json',
        mtype: 'GET',
        colNames:['번호',"이름","전화번호", "펑점", "주소", "내용", "작성자", "지역", "종류"/* , "등록일", "수정일" */],
        colModel :[
          {name:'resNo', index:'resNo', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'resName', index:'resName', width:100, align:"center", editable:true},
          {name:'resNumber', index:'resNumber', width:100, align:"center", editable:true},
          {name:'resScore', index:'resScore', width:100, align:"center", editable:true},
          {name:'resLoc', index:'resLoc', width:100, align:"center", editable:true},
          {name:'resContent', index:'resContent', width:100, align:"center", editable:true},
          {name:'userId', index:'userId', width:100, align:"center", editable:true},
          {name:'locName', index:'locName', width:100, align:"center", editable:true},
          {name:'resKind', index:'resKind', width:100, align:"center", editable:true},
          /* {name:'resRegdate', index:'resRegdate', width:100, align:"center", editable:true},
          {name:'resUpdatedate', index:'resUpdatedate', width:100, align:"center", editable:true}, */
        ],
        pager:'#navGridForRestaurant',
        rowNum: 10,
        rowList: [5, 10, 15],
        sortname: 'userId',
        sortorder: 'desc',
        viewrecords: true,
        caption: '맛집페이지정보',
		height: 300,
		width:$('.container').width(),
        autowidth: false,
        loadonce:false,
        ondblClickRow: function(rowid, iRow, iCol, e){
            //jsondata = $('#JQ_list').getRowData(rowid);
        	//selected_userId = jsonData.userId;
        	//mypage
        },
        gridComplete:function(response){
        }
   });
    
    jQuery("#JQ_list_forRestaurant").jqGrid('navGrid',"#navGridForRestaurant",{edit:false,add:false,del:true,search:true,refresh:true}
    );
   
    jQuery("#JQ_list_forRestaurant").trigger("reloadGrid");
    
});


</script>
</head>
<body>
<br>
<div class="container">
<table id="JQ_list_forRestaurant"></table>
<div id="navGridForRestaurant"></div> 
</div>
</body>
</html>