<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table, td{
border: 1px solid;
}
table{
width:60%;
height: 100px;
margin: auto;
text-align: center;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align: center;">주문영수증</h2>
	<table style="text-align: center;">
	<tr>
	 	<th>주문완료</Th>
	 </tr>
	<tr>
		<td>결제완료</td>
	</tr>
	<tr>
		<th>주소</th>
		<td>${dto.o_address}</td>
	</tr>
	<tr>
		<th>전화번호</th>
	</tr>
	<tr>
		<td>주문시간</td>
	</tr>
	<tr>
		<td>식당이름</td>
	</tr>
	<tr>
		<td>주문내역</td>
	</tr>
	<tr>
		<td>요청사항</td>
	</tr>

 


	
</table>

</body>
</body>
</html>