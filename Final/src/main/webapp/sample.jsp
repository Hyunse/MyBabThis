<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>W2UI Demo: grid-3</title>
    <link rel="stylesheet" type="text/css" href="http://w2ui.com/src/w2ui-1.4.1.min.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script type="text/javascript" src="http://w2ui.com/src/w2ui-1.4.1.min.js"></script>
</head>
<body>

 
<div id="grid" style="width: 100%; height: 400px; overflow: hidden;"></div>
<br>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.header = !obj.show.header; w2ui['grid'].refresh();">Header</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.toolbar = !obj.show.toolbar; w2ui['grid'].refresh();">Toolbar</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.columnHeaders = !obj.show.columnHeaders; w2ui['grid'].refresh();">Column Headers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.footer = !obj.show.footer; w2ui['grid'].refresh();">Footer</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.lineNumbers = !obj.show.lineNumbers; w2ui['grid'].refresh();">Line Numbers</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.selectColumn = !obj.show.selectColumn; w2ui['grid'].refresh();">Select Column</button>
<button class="btn" onclick="var obj = w2ui['grid']; obj.show.expandColumn = !obj.show.expandColumn; w2ui['grid'].refresh();">Expand Column</button>

<script type="text/javascript">
$(function () {
    $('#grid').w2grid({ 
        name: 'grid', 
        header: 'List of Names',
        url: '<%=request.getContextPath()%>/a',
        method: 'GET', // need this to avoid 412 error on Safari
        show: {
            header         : true,
            toolbar     : true,
            footer        : true,
            lineNumbers    : true,
            selectColumn: true,
            expandColumn: true,
            toolbarSave: true
        },        
        columns: [                
            { field: 'resNo', caption: '맛집번호', size: '120px', sortable: true },
            { field: 'resName', caption: '맛집이름', size: '120px', sortable: true },
            { field: 'resNumber', caption: '맛집전화번호', size: '120px', sortable: true },
            { field: 'resScore', caption: '맛집평점', size: '120px', sortable: true },
            { field: 'resLoc', caption: '맛집주소', size: '120px', sortable: true },
            { field: 'resContent', caption: '맛집내용', size: '120px', sortable: true },
            { field: 'userId', caption: '작성자', size: '120px', sortable: true },
            { field: 'locName', caption: '지역이름', size: '120px', sortable: true },
            { field: 'resContent', caption: '맛집종류', size: '120px', sortable: true },
            { field: 'resRegdate', caption: '등록일', size: '120px', sortable: true, render: 'date' },
            { field: 'resRegdate', caption: '수정일', size: '120px', sortable: true, render: 'date' },
        ],
        searches: [
            { type: 'text',  field: 'userId', caption: '작성자' },
            { type: 'text', field: 'resName', caption: '맛집이름' },
            { type: 'text', field: 'resKind', caption: '맛집종류' },
            { type: 'text', field: 'locName', caption: '지역이름' },
            { type: 'date', field: 'resRegdate', caption: '등록일' }
        ],
        toolbar: {
            items: [
                { id: 'add', type: 'button', caption: 'Add Record', icon: 'w2ui-icon-plus' }
            ],
            onClick: function (event) {
                if (event.target == 'add') {
                    w2ui.grid.add({ recid: w2ui.grid.records.length + 1 });
                }
            }
        },
        onExpand: function (event) {
            $('#'+event.box_id).html('<div style="padding: 10px">Expanded content</div>').animate({ 'height': 100 }, 100);
        }
    });    
});
</script>

</body>
</html>