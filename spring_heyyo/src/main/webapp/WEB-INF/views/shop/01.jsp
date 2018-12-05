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


</style> 
</head> 
<!-- *********************************************** -->
<body>


<!-- *********************************************** -->
<div style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/01" class="active">핫해요 소개</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/02" class="">입점절차</a></th>
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
		핫해요 소개
		</h2>
		<p>
		음식점 성장의 파트너, 요기요
		</p>
	</div>
	
	<div class="color" style="background-color: #e7e7e7; width: 70%; margin-left:20%; margin-top: 10%;  ">
		
		<br><p style="font-size: 30px;">배달 주문 플랫폼 '핫해요'</p>
		<br><p style="font-size: 20px; ">
		저희 조원은 '송현경', '이승환', '이광민', '이형복', '김부권', '최서우', '김지수'
		<br>7명의 조원으로 이루어 졌습니다. 현재 진행하는건 배달 싸이트를 작업중입니다. 
		<br>모두 취업에 성공하길 기원합니다.
			</p><br><br><br>
	</div>

	<div style="border-top: 1px solid; margin-top: 45px; margin-left: 20%;">
		<p style="font-size: 25px;">
		'핫해요'는 모든 직장 사장님들의 성장 파트너가 되고 싶습니다.</p>
		
		<p>저희 모두는 6개월 이라는 짧음 기간동안 전공자이든 비전공자이든 모두 힘을내서 열심히 공부했습니다.<br>
			아직은 아는것도 없고 불안해 보이지만 함께 성장하고 발전되는 모습을 보이도록 노력해서 <br>
			걸림돌이 되지 안게 할 것 입니다.
		</p>
	</div>
	
</div>
 
<!-- *********************************************** -->

</body>
<!-- *********************************************** -->
</html> 