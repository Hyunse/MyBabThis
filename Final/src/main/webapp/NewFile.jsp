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
//var jsondata = $('#JQ_list').getRowData(rowid);
//var selected_userId;
$(document).ready(function(){
    jQuery("#JQ_list").jqGrid({
        url:'<%=request.getContextPath()%>/a',
        editurl:'<%=request.getContextPath()%>/sample/addUser',
        datatype: 'json',
        mtype: 'GET',
        colNames:['아이디',"이름","이메일"],
        colModel :[
          {name:'userId', index:'userId', key:true, width:80, align:"right", sorttype:"text",editable:true},
          {name:'userName', index:'userName', width:100, align:"center", editable:true},
          {name:'userEmail', index:'userEmail', width:100, align:"center", editable:true},
          //{name:'userGender', index:'userGender', width:100, align:"center", editable:true},
          //{name:'userPhone', index:'userPhone', width:100, align:"center", editable:true},
          //{name:'userRagdate', index:'userRagdate', width:100, align:"center", editable:true},
          //{name:'userUpdatedate', index:'userUpdatedate', width:100, align:"center", editable:true},
          //{name:'userGrade', index:'userGrade', width:100, align:"center", editable:true},
          //{name:'userActivation', index:'userActivation', width:100, align:"center", editable:true},
        ],
        pager:'#prowed1',
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
    /* 
    gridData.list.sort(function(a, b){
		 if(a.score == b.score){ return 0} 
		 else{
			 return  a.score > b.score ? 1 : -1;
		 }
	});
   */
    
    
    jQuery("#JQ_list").jqGrid('navGrid',"#prowed1",{edit:true,add:true,del:true,search:true,refresh:true},
    		{},
    		{}
    );
   
    jQuery("#JQ_list").trigger("reloadGrid");
    

    $.extend($.jgrid.add, {
        beforeSubmit: function () {
        	alert(aa);
            $(this).jqGrid("setGridParam", {datatype: "json"});
            return [true,"",""];
        }
    });
    
    
});


</script>
<%-- 

<script>
function searchList(){
	$.ajax({
		type : "POST",
		url : '<%=request.getContextPath()%>/sample/getList',
		cache : false,
		async : true,
		dataType : "json",
		complete : function() {
		},
		success : function(response) {
			 var mydata = response
			 for(var i=0;i<=mydata.length;i++){ //그리드에 로컬데이터 추가
			     jQuery("#JQ_list").jqGrid('addRowData',i+1,mydata[i]);
			     }
		},
		error : function(request, status, errorThrown) {
		}
	});
}

$(window).load(function() {
	searchList();
});


</script>
 --%>
 
</head>
<body>
<table id="JQ_list"></table>
 <div id="prowed1"></div> 
</body>
</html>