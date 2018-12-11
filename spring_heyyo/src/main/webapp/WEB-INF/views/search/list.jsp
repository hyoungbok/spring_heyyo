<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="restaurant_list">
	<div class="restaurant_block" onclick="javascript:select_restraunt(1)">
		<img class="restaurant_logo" src="./logo.jpg">
		<div class="restaurant_info">
			<span>피자집</span>
			<br>
			<span>3.45</span>
			<span>리뷰 99999</span>
			<br>
			<span>15000원 이상</span>
		</div>
	</div>
</div>
<script>
function select_restraunt(id){
	var url = "./restraunt/";
	url += "?id="+id;
	location.href = url;
}
</script>
</body>
</html>