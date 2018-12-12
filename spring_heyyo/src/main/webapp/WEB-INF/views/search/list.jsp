<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.restaurant_list {
	flex-wrap: wrap;
}
.restaurant_block {
	height: 150px;
	width: 150px;
	position: relative;
	display: inline-block;
}
</style>
</head>
<body>
<div class="container">
	<h1>Restaurant List Page</h1>	
	<div class="restaurant_list">
		<c:forEach var="restaurant" items="${restaurants}">
		<div class="restaurant_block" onclick="javascript:select_restraunt('${restaurant.r_code}')">
			<img class="restaurant_logo" src="${root}/img/restaurant/${restaurant.r_logo}">
			<div class="restaurant_info">
				<span>${restaurant.r_name}</span>
				<br>
				<span>${restaurant.reviewPoint}</span>
				<span>리뷰 ${restaurant.reviewCount}</span>
				<br>
				<span>${restaurant.r_min}원 이상</span>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
<script>
function select_restraunt(id){
	var url = "${root}/"+id;
	
	location.href = url;
}
</script>
</body>
</html>