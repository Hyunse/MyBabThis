<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>W2UI Demo: grid-21</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="css/jquery-ui.css" />
<link rel="stylesheet" type="text/css" media="screen"
	href="css/ui.jqgrid.css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script src="js/i18n/grid.locale-kr.js" type="text/javascript"></script>
<script src="js/jquery.jqGrid.src.js" type="text/javascript"></script>
</head>
<body>

<table id="rowed1"></table>
<div id="prowed1"></div>
<br />
<input type="BUTTON" id="ed1" value="Edit row 13" />
<input type="BUTTON" id="sved1" disabled="disabled" value="Save row 13"/>
<input type="BUTTON" id="cned1" disabled="disabled" value="Cancel Save" />

<script src="rowedex1.js" type="text/javascript"> </script>
	<script>
jQuery("#rowed1").jqGrid({

          url : '<%=request.getContextPath()%>/admin/userData',
          datatype : "json",
          mtype : "get",
          colNames : [
                          '아이디',
                          '이름',
                          '비밀번호',
                          '등급'
                     ],
          colModel : [
                    { name : 'userId',        width:40,  align:'center'},
                    { name : 'userName',      width:80,  align:'left'  },
                    { name : 'userPass',       width:80,  align:'left'  },
                    { name : 'userGrade',       width:80,  align:'right' }, 
            ],
          pager : '#prowed1',
          viewrecords: true,
          sortname: 'userId',
          sortorder: "desc",
          rowNum : '10'
    });


jQuery("#rowed1").jqGrid('navGrid',"#prowed1",{edit:false,add:false,del:false});

jQuery("#ed1").click( function() {
	jQuery("#rowed1").jqGrid('editRow',"13");
	this.disabled = 'true';
	jQuery("#sved1,#cned1").attr("disabled",false);
});
jQuery("#sved1").click( function() {
	jQuery("#rowed1").jqGrid('saveRow',"13");
	jQuery("#sved1,#cned1").attr("disabled",true);
	jQuery("#ed1").attr("disabled",false);
});
jQuery("#cned1").click( function() {
	jQuery("#rowed1").jqGrid('restoreRow',"13");
	jQuery("#sved1,#cned1").attr("disabled",true);
	jQuery("#ed1").attr("disabled",false);
});

</script>

</body>
</html>