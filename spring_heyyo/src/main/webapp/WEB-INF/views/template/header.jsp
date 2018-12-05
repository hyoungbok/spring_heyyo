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
</style> 
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->

<div  style="background-color: red;  margin-bottom: 40px;">
 <div  style="padding: 25px; height: 40px; " >
	<a href="${root}" style="float: left;" >
		<img alt="" src="img/chicken.png" style="width: 80px; height: 30px;">
	</a>
	
	<div align="right" >
		<button  type="button" onclick="location.href='#'" s
		style="background-color:red; border: 1px solid #ffffff; color: #ffffff;
		font-size: 18px; height: 40px; "
		>로그인 <span>|</span> 회원가입
	 	</button>
	</div>

 </div>
<!--  
 <div  align="right" style="padding: 30px; height: 30px;" >
	<button  type="button" onclick="#" 
	style="background-color:red; border: 1px solid #ffffff; color: #ffffff;
	font-size: 18px;"
	>로그아웃
 	</button>
 </div>
 -->
	</div>
	<div>
