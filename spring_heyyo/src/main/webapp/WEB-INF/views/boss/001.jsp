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
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/boss/001" class="active">우수직원</a></th>
 		</tr>
 		
 	</tbody>
 </table>
</div>

<div>
 	<div class="m" style="margin-left:20%; border-bottom: 2px solid #343434;">
		<h2>
		우수직원
		</h2>
		<p>
		매월 1일 선정하는 사장님 혜택 프로그램
		</p>
	</div>
	
	<div class="color" style="background-color: #e7e7e7; width: 70%; margin-left:20%; margin-top: 10%;  ">
		
		<br><p style="font-size: 20px; color: #AAAAAA ;">매월 1일 성실한 직원을 선정합니다</p>
		<br><p style="font-size: 35px; margin-left:18px;"><strong>핫해요 우수 직원을 선정합니다.</strong></p>
	
	
		<br><br><br>
	</div>

	<div style="border-top: 1px solid; margin-top: 45px; margin-left: 20%; ">
		<p style="font-size: 25px;">
		'핫해요'는 모든 팀원들이 우수합니다..</p>
		
		<p> 매일 매일 열심히 일하고 즐기며 생활합니다.
			<br>그중에서 우수한 팀원을 추천을 받아 뽑아 선정합니다.
			
		</p>
	</div>
	
</div>
 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 