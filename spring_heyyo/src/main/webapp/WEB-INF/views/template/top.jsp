<%@ page contentType="text/html; charset=UTF-8" %> 
 <% 
	String root = request.getContextPath();
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 

a { 
text-decoration:none;
color: black;

 }
 ul{
   list-style:none;
   }
  ul, li{
   display: inline;
   }
.top {
	margin-left: 400px;
	margin-top: 80px;
	margin-bottom: 50px;
}
.bottom {
}
</style> 

</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div style="border-bottom: 2px solid; margin-bottom: 50px;">

	<a href="<%=root %>" style="float: left; " >
		<img alt="" src="<%=root %>/img/chicken.png" style="width: 80px; height: 30px;">
	</a>

<div class="top">
	<strong>
	<ul style="font-size: 25px;">
		<li><a href="<%=root %>/myshop/000">내 업소 관리</a></li>
		<li style="margin-left: 30px;"><a href="<%=root %>/boss/001">사장님 혜택</a></li>
		<li style="margin-left: 30px;"><a href="<%=root %>/shop/01">입점 안내</a></li>
	</ul>
	</strong>
	<ul style="font-size: 14px; margin-left: 300px; ">
		<li style="margin-right: 10px;"><a href="<%=root %>/buisness/list">문의 게시판</a></li>
		<li>|</li>
		<li style="margin-left: 10px"><a href="#">로그인</a></li>
	</ul>
</div>
</div>

<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 