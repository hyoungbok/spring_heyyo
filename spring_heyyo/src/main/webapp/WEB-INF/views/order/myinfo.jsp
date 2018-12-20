<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<%@ include file="/ssi/ssi.jsp"%>
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title> 

<!-- 메뉴드랍  -->
<style type="text/css">

a { 
text-decoration:none;
color: #666666;
 }

.table {
border: 1px solid;
width: 35%;
margin-left:25%;
float: left;
margin-bottom: 60px;
}

</style>
<style type="text/css">

p {
padding: 20px 0 0;
width: 70%;

}
.m {
padding-left: 15px;
}
</style>



</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->





 	<div  style="margin-left:25%; margin-top:5%; " >
		<table style="border: 1px solid;  align: center;">
			<tr  >
			<td align="center" style="border-right: 1px solid; width: 100px; 	">
				<a href="menu">메뉴(total)</a>
			</td>
			<td align="center" style="border-right: 1px solid; width: 100px; ">
				<a href="review">리뷰(total)</a>
			</td>
			<td align="center" style=" border-bottom:7px solid #7c7c7c;height: 40px; width: 100px; background-color: #dfdfdf;">
				<strong><a href="myinfo">정보</a></strong>
			</td>
			</tr>
		</table>
			</div>					
	
<div class="table" style="margin-right: 30px;">
 	<div class="m"  style=" border-bottom: 2px solid #343434; width: 90%;">
		<p style="font-size: 26px;"> 네네치킨 서초1호점</p>
	</div>
	<div class="m" style=" border-bottom: 1px solid ; width: 90%; ">
		<p style="margin-top: 40px;font-size: 20px;">업체 정보</p>

		<p style="color:#a1a1a1; ">영업시간 &nbsp;&nbsp; &nbsp; 12:30 - 04:00 </p>
	</div>
	
	<div class="m" style=" border-bottom: 1px solid ;  width:90%;">
		<p style="margin-top: 50px;font-size: 20px;">결제 정보</p>
	
		<p style="margin-top: 10px;color:#a1a1a1; ">최소주문금액 &nbsp; 15,000원</p>
		<p style="margin-top: 10px;color:#a1a1a1; ">결제수단 &nbsp; &nbsp; &nbsp;&nbsp; 신용카드 , 현금 </p>
	</div>
	
	<div class="m" style=" padding-bottom: 30px; ">
		<p style="margin-top: 50px;font-size: 20px;margin-left:2%;">원산지 정보</p>

		<p style="margin-top: 10px;color:#a1a1a1; ">닭고기(국내산)</p>
		
	</div>
	
</div>



<div >
	 <table style="border: 1px solid; width: 20%;">
		 <tr style="background-color: #2a2a2a; color: #ffffff ">
			 <td style="border-bottom: 1px solid; height: 40px; padding: 0 0 0 20px;">
				 주문표
			 </td>
		 </tr>
		 <tr>
			 <td style="height: 100px; padding: 0 0 0 20px;">
				<p> 주문표에 담긴 메뉴가 없습니다</p>
				
			 </td>
		 </tr>
	 </table>

		<button  type="button" onclick="location.href='#'" 
		style="background-color:red; border: 1px solid #ffffff; color: #ffffff;
		font-size: 18px; height:60px; width:20%;  margin-top: 10px;"
		>주문하기
	 	</button>
	
</div>


<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 