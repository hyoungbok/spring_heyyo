<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/ssi/ssi.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rdel(){
		
		var url =  "delete";
		
		location.href = url;
	}
</script>
</head>
<body>
확인을 누르면 리뷰가 삭제됩니다 정말 삭제하시겠습니까?<br><br>
<input type="button" value="확인" onclick="rdel()">
<input type="button" value="취소" onclick="history.back()">
</body>
</html>