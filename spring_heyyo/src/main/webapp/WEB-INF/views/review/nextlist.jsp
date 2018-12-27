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
	 		<td><a href="javascript:report(${dto.reviewnum });">신고</a></td>
	 	</tr>
	 	<tr>
	 		<td colspan="2">
	 		<c:forEach var="i" begin="1" step="1" end="${dto.review_point/1 }">
				<img src="${root }/review/review_stars/full_gold_star.png"
					style="width: 30px; height: auto;">
				</c:forEach>
				<c:if test="${dto.review_point%1 >0}">
				<img src="${root }/review/review_stars/half_gold_star.png"
					style="width: 30px; height: auto;">
				</c:if>
				<c:choose>
					<c:when test="${not empty dto.review_point }">
						${dto.review_point }점
					</c:when>
					<c:otherwise>
						0 점
					</c:otherwise>
				</c:choose>
	 		</td>
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
	 	<c:choose>
	 		
		 	<c:when test="${not empty dto.r_replycontent }">
			 	<tr>
			 	<td colspan="2">사장님</td>
			 	</tr>
			 	
			 	<tr>
			 	<td colspan="2">${dto.r_replycontent}</td>
			 	</tr>	
		 	</c:when>
			 	<c:otherwise>
			 		<tr>
			 			<td colspan="2">
					 		<div class="rcreate">
						 	<form name="rform" action="./rcreate" method="post" onsubmit="return input(this)">
							  <input type="submit" name="rsubmit" value="등록">
							  <input type="hidden" name="reviewnum" value="${dto.reviewnum}">
							  <input type="hidden" name="col" value="${col}">
							  <input type="hidden" name="word" value="${word}">
							  <input type="hidden" name="nowPage" value="${nowPage}">
							  <input type="hidden" name="r_code" value="${param.r_code}">
							  <input type="hidden" name="scroll" value="">
								  	
							  <textarea rows="3" cols="28" name="r_replycontent"></textarea>
						 	  </form>
					 		</div>
			 			</td>
			 		</tr>
			 	</c:otherwise>
		 	</c:choose>
  	</table>
  	 	
 	</c:forEach>
	 		 
	 	  
	

 <div id="page">
 ${paging}
 </div>
</body>


</html>