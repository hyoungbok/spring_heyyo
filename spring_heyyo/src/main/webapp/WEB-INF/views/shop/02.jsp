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


.table0 {
	padding-bottom: 100%;
	text-align: center;
}
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
 .active {
    color: #DC1400;
    font-weight: bold;
}
table {
display: inline-block;
}

</style> 
<link href="../css/style.css" rel="Stylesheet" type="text/css">
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/01" class="">핫해요 소개</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/02" class="active">입점절차</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/03" class="">온라인 입점신청</a></th>
 		</tr>
 	</tbody>
 </table>
</div>

<div>
 	<div class="m" style="margin-left:20%; border-bottom: 2px solid #343434;">
		<h2>
		입점 절차
		</h2>
		<p>
		등록비용없이, 쉽고 편리하게 입점하실 수 있어요
		</p>
	</div>
	
	<p  style="margin-top: 30px; "><strong>문의를 남겨 주시면, 전화 드리고 등록을 도와 드리겠습니다.</strong></p>
	<div style="margin-left:20%; " >
	<img alt="" src="../img/이미지01.png" style="margin-bottom: 50px;">
	</div>
	
</div>
	<button onclick="location.href='./03'">입점 신청서</button>
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 