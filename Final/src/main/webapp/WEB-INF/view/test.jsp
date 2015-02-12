<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>W2UI Demo: grid-21</title>
    <link rel="stylesheet" type="text/css" href="http://w2ui.com/src/w2ui-1.4.1.min.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://w2ui.com/src/w2ui-1.4.1.min.js"></script>
</head>
<body>

<div id="grid" style="width: 100%; height: 400px;"></div>
<br>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
<table id="grid"></table>
<div id="pager"></div>
var $Grid = {};
$(document).ready(function(){
     $Grid = $('#grid');
     $Grid.jqGrid({
          url : '<%=request.getContextPath()%>/admin/userData',
          datatype : "json",
          mtype : "get",
          jsonReader : {
               id : "userId", 					// 대표 아이디를 설정
               root : "records" 			// 데이터의 시작을 설정
          },
          colNames : [
                          '아이디',
                          '이름',
                          '비밀번호',
                          '등급'
                     ],
          colModel : [
                    { name : 'id',        width:40,  align:'center'},
                    { name : 'name',      width:80,  align:'left'  },
                    { name : 'pass',       width:80,  align:'left'  },
                    { name : 'grad',       width:80,  align:'right' }, 
            ],
          pager : '#pager',
          rowNum : '10',
          multiselect : true,
          postData : {
               id : 'id',
               name : 'name'
          }
    });
});
</script>

</body>
</html>