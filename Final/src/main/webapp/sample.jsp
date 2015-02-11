<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        url: '<%=request.getContextPath()%>/sample/users',
        method: 'GET', // need this to avoid 412 error on Safari
        show: {
            header         : true,
            toolbar     : true,
            footer        : true,
            lineNumbers    : true,
            selectColumn: true,
            expandColumn: true
        },        
        columns: [                
            { field: 'jsonView.list.userId', caption: 'First Name', size: '30%' },
            { field: 'jsonView.userId', caption: 'Last Name', size: '30%' },
            { field: 'list.userId', caption: 'Start Date', size: '120px' },
        ],
        searches: [
            { type: 'text',  field: 'jsonView.list.userId', caption: 'ID' },
            { type: 'text', field: 'jsonView.userId', caption: 'Name' },
            { type: 'date', field: 'list.userId', caption: 'Start Date' }
        ],
        onExpand: function (event) {
            $('#'+event.box_id).html('<div style="padding: 10px">Expanded content</div>').animate({ 'height': 100 }, 100);
        }
    });    
});
</script>

</body>
</html>