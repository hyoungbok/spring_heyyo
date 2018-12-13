<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/ssi/ssi.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
    margin : 10px;
}

table, th, td {
    border: 1px solid black;
}

th {
    height: 50px;
}
th,td{
padding: 10px;
}
</style>

</head>
<body>

 	<c:forEach var="dto" items="${list }">
 	<table>
	 	<tr>
	 		<td width="95%">${dto.m_id } 님 ${dto.review_date }</td>
	 		<td>신고</td>
	 	</tr>
	 	<tr>
	 		<td colspan="2">★★★★☆|맛★5 양★5 배달★4</td>
	 	</tr>
	 	
	 	<c:if test="${not empty dto.review_image}">
		 	<tr>
		 		<td colspan="2">
		 		<img src="${root }/review/storage/${dto.review_image }">
		 		</td>
		 	</tr>
	 	</c:if>
	 	
	 	<tr>
	 		<td colspan="2">${dto.f_name}</td>
	 	</tr>
	 	<tr>
	 		<td colspan="2">${dto.review_content }</td>
	 	</tr>
  	</table>
 	</c:forEach>
	 		 
	 	  
	

 <div id="page">
 ${paging}
 </div>
</body>


</html>