<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<script type="text/javascript">

</script>
<style type="text/css"> 



a { 
text-decoration:none;
color: #666666;
 }
 .th0 {
	width : 180px;
	height : 80px;
    background-color: #FAFAFA;
    border-bottom: 1px solid #E0E0E0;
  	font-size: 18px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
 }
 .actives {
    color: #DC1400;
    font-weight: bold;
}
table {
display: inline-block;
}

</style> 
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/001" class="">업소 수정</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/002" class="">메뉴 수정</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/003" class="">리뷰total(명)</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/004" class="actives">매출 현황</a></th>
 		</tr>
 	</tbody>
 </table>
</div>

<div>
 	<div class="m" style="margin-left:20%; ">
		<h2>
		매출 현황
		</h2>
       <div id="chart_div1" style="width: 80%; height: 600px;"></div>
	</div>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
		
</div>
   <script type="text/javascript">
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Year', '2018매출', '2017매출'],
    ['1',  3000, 2525],
    ['2',  2500, 2805],
    ['3',  3000, 4001],
    ['4',  4204, 3540],
    ['5',  4454, 3540],
    ['6',  5115, 4405],
    ['7',  0, 3540],
    ['8',  0, 5115],
    ['9',  0, 0],
    ['10',  5520, 4555],
    ['11',  5110, 4510],
    ['12',  6610, 7110]
  ]);

  var options = { 
    title: '만원(단위) / 월',
    hAxis: {title: '2018년 0월 0일',  titleTextStyle: {color: '#333'}},
    vAxis: {minValue: 0}
  };

  var chart = new google.visualization.AreaChart(document.getElementById('chart_div1'));
  chart.draw(data, options);
}
   </script>  
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 