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
    jQuery("#JQ_list_forUsers").jqGrid({
        url:'<%=request.getContextPath()%>/admin/Users/getList',
        editurl:'<%=request.getContextPath()%>/admin/Users/leave',
        datatype: 'json',
        mtype: 'GET',
        colNames:['아이디',"이름","이메일", "성별", "연락처", "가입일", "수정일", "등급", "활성화여부"],
        colModel :[
          {name:'userId', index:'userId', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'userName', index:'userName', width:100, align:"center", editable:true},
          {name:'userEmail', index:'userEmail', width:100, align:"center", editable:true},
          {name:'userGender', index:'userGender', width:100, align:"center", editable:true},
          {name:'userPhone', index:'userPhone', width:100, align:"center", editable:true},
          {name:'userRagdate', index:'userRagdate', width:100, align:"center", editable:true},
          {name:'userUpdatedate', index:'userUpdatedate', width:100, align:"center", editable:true},
          {name:'userGrade', index:'userGrade', width:100, align:"center", editable:true},
          {name:'userActivation', index:'userActivation', width:100, align:"center", editable:true},
        ],
        pager:'#navGridForUsers',
        rowNum: 10,
        rowList: [5, 10, 15],
        sortname: 'userId',
        sortorder: 'desc',
        viewrecords: true,
        caption: '회원정보',
        height: '100%',
        autowidth: true,
        loadonce:false,
        ondblClickRow: function(rowid, iRow, iCol, e){
            //jsondata = $('#JQ_list').getRowData(rowid);
        	//selected_userId = jsonData.userId;
        	//mypage
        },
        gridComplete:function(response){
        }
   });
    
    jQuery("#JQ_list_forUsers").jqGrid('navGrid',"#navGridForUsers",{edit:true,add:true,del:true,search:true,refresh:true}
    );
   
    jQuery("#JQ_list_forUsers").trigger("reloadGrid");
    
    $.extend($.jgrid.add, {
        beforeSubmit: function () {
        	alert(aa);
            $(this).jqGrid("setGridParam", {datatype: "json"});
            return [true,"",""];
        }
    });
});


</script>
</head>
<body>
<table id="JQ_list_forUsers"></table>
<div id="navGridForUsers"></div> 
</body>
</html>