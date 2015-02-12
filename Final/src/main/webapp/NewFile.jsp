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

<script type="text/javascript">
// 데이터와 변수 설정 
var gidData = [
        { id: "1", orderdate: "2013-10-01", customer: "customer",  price: "200.00", vat: "10.00", completed: true, shipment: "TN", total: "210.00"},
        { id: "2", orderdate: "2013-10-01", customer: "customer2",  price: "300.00", vat: "20.00", completed: false, shipment: "FE", total: "320.00"},
        { id: "3", orderdate: "2011-07-30", customer: "customer3",  price: "400.00", vat: "30.00", completed: false, shipment: "FE", total: "430.00"},
        { id: "4", orderdate: "2013-10-04", customer: "customer4",  price: "200.00", vat: "10.00", completed: true, shipment: "TN", total: "210.00"},
        { id: "5", orderdate: "2013-11-31", customer: "customer5",  price: "300.00", vat: "20.00", completed: false, shipment: "FE", total: "320.00"},
        { id: "6", orderdate: "2013-09-06", customer: "customer6",  price: "400.00", vat: "30.00", completed: false, shipment: "FE", total: "430.00"},
        { id: "7", orderdate: "2011-08-30", customer: "customer7",  price: "200.00", vat: "10.00", completed: true, shipment: "TN", total: "210.00"},
        { id: "8", orderdate: "2013-10-03", customer: "customer8",  price: "300.00", vat: "20.00", completed: false, shipment: "FE", total: "320.00"},
        { id: "9", orderdate: "2013-09-01", customer: "customer9",  price: "400.00", vat: "30.00", completed: false, shipment: "TN", total: "430.00"},
        { id: "10", orderdate: "2013-09-08", customer: "customer10", price: "702.00", vat: "30.00", completed: true, shipment: "IN", total: "530.00"},
        { id: "11", orderdate: "2013-09-08", customer: "customer11",  price: "500.00", vat: "30.00", completed: false, shipment: "FE", total: "530.00"},
        { id: "12", orderdate: "2013-09-10", customer: "customer12",  price: "500.00", vat: "30.00", completed: false, shipment: "FE", total: "530.00"}
    ],
    theGrid = $("#Grid"),
    numberTemplate = {formatter: 'number', align: 'right', sorttype: 'number'};
 
// jqGrid 옵션 설정 
    theGrid.jqGrid({
        datatype: 'local',
        data: gidData,
        colNames: ['Customer', 'Date',  'Price', 'VAT', 'Total', 'Completed', 'Shipment'],
        colModel: [                  
            {name: 'customer', index: 'customer', width: 90, editable:true},
	        {name: 'orderdate', index: 'orderdate', width: 100, align: 'center', sorttype: 'date',
	            formatter: 'date', datefmt: 'd-M-Y'},
	        {name: 'price', index: 'price', width: 55, template: numberTemplate},
	        {name: 'vat', index: 'vat', width: 42, template: numberTemplate},
	        {name: 'total', index: 'total', width: 50, template: numberTemplate},
	        {name: 'completed', index: 'completed', width: 30, align: 'center', formatter: 'checkbox',
	            edittype: 'checkbox', editoptions: {value: 'Yes:No', defaultValue: 'Yes'}},
	        {name: 'shipment', index: 'shipment', width: 80, align: 'center', formatter: 'select',
	           edittype: 'select', editoptions: {value: 'FE:FedEx;TN:TNT;IN:Intime;us:USPS', defaultValue: 'Intime'}}                  
        ],
        autowidth: true,
        gridview: true,             
        rownumbers: false,
        rowNum: 10,
        rowList: [5, 10, 15],
        pager: '#GridPager',
        sortname: 'Date',
        sortorder: 'asc',
        viewrecords: true,  
        caption: 'LG Solar Dashboard',
        height: '100%',
        width: 'auto',
        gridComplete :  function () {
	                        var maxDate; 
	                        var rowIDs = jQuery("#Grid").jqGrid('getDataIDs');
	                        for (var i = 0; i < rowIDs.length ; i++) 
	                        {
	                            var rowID = rowIDs[i];
	                            var row = jQuery('#Grid').jqGrid ('getRowData', rowID);

	                            if(i==0)
	                            {
	                                maxDate = new Date(row.orderdate);
	                            }
	                            else
	                            {
	                                if(maxDate < new Date(row.orderdate))
	                                {   
	                                	maxDate = new Date(row.orderdate);
	                                }                                       
	                            }       
	                        }
	                        $("#maxDateField").val(maxDate);
                        }
    });
</script>

</head>
<body>
<table id="list"></table>
</body>
</html>