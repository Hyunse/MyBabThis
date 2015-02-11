<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<title>W2UI Demo: grid-3</title>

<link rel="stylesheet" type="text/css"
	href="http://w2ui.com/src/w2ui-1.4.min.css" />

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>

<script type="text/javascript" src="http://w2ui.com/src/w2ui-1.4.min.js"></script>

</head>

<body>




	<div id="grid" style="width: 100%; height: 400px; overflow: hidden;"></div>


	<br>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.header = !obj.show.header; w2ui['grid'].refresh();">Header</button>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.toolbar = !obj.show.toolbar; w2ui['grid'].refresh();">Toolbar</button>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.columnHeaders = !obj.show.columnHeaders; w2ui['grid'].refresh();">Column
		Headers</button>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.footer = !obj.show.footer; w2ui['grid'].refresh();">Footer</button>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.lineNumbers = !obj.show.lineNumbers; w2ui['grid'].refresh();">Line
		Numbers</button>

	<button class="btn"
		onclick="var obj = w2ui['grid']; obj.show.selectColumn = !obj.show.selectColumn; w2ui['grid'].refresh();">Select
		Column</button>

	<!-- <button class="btn" onclick="var obj = w2ui['grid']; obj.show.expandColumn = !obj.show.expandColumn; w2ui['grid'].refresh();">Expand Column</button> -->




	<script type="text/javascript">
		$(function() {

			$('#grid').w2grid({

				name : 'grid',

				header : 'List of Names',

				url : '<%=request.getContextPath()%>/listStudentData.do', 

				show : {

					header : false,

					toolbar : true,

					footer : true,

					lineNumbers : true,

					selectColumn : true,

					expandColumn : false

				},

				columns : [

				{
					field : 'userId',
					caption : 'ID',
					size : '10%',
					sortable : true
				},

				{
					field : 'password',
					caption : 'password',
					size : '5%'
				},

				{
					field : 'email',
					caption : 'Email',
					size : '15%'
				},

				{
					field : 'userName',
					caption : 'userName',
					size : '10%'
				},

				{
					field : 'birthdate',
					caption : 'Birthdate',
					size : '10%',
					sortable : true
				},

				{
					field : 'phone',
					caption : 'phone',
					size : '10%'
				},

				{
					field : 'addr',
					caption : 'addr',
					size : '10%'
				},

				{
					field : 'level',
					caption : 'level',
					size : '10%'
				},

				{
					field : 'joindate',
					caption : 'joindate',
					size : '10%',
					sortable : true
				},

				{
					field : 'flag',
					caption : 'flag',
					size : '5%'
				},

				],

				searches : [

				{
					type : 'int',
					field : 'recid',
					caption : 'ID'
				},

				{
					type : 'text',
					field : 'userId',
					caption : 'userID'
				},

				{
					type : 'text',
					field : 'userName',
					caption : 'userName'
				},

				{
					type : 'int',
					field : 'birthdate',
					caption : 'Birthdate',
					sortable : true
				},

				{
					type : 'text',
					field : 'level',
					caption : 'level'
				},

				{
					type : 'date',
					field : 'joindate',
					caption : 'joindate',
					sortable : true
				}

				],

			/* onExpand: function (event) {

			    $('#'+event.box_id).html('<div style="padding: 10px">Expanded content</div>').animate({ 'height': 100 }, 100);

			} */

			});

		});
	</script>




</body>

</html>
