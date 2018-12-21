<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/ssi/ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function rdel(reviewnum,oldfile){
		var	url = "review/delete" ;
		url = url + "?reviewnum="+reviewnum;
		
		url = url + "&oldfile="+oldfile;
		url = url + "&nowPage=${nowPage}";
		
		location.href = url;
	}
	function pdel(reportnum){
		var	url = "delete" ;
		url = url + "?reportnum="+reportnum;
		url = url + "&nowPage=${nowPage}";
		
		location.href = url;
	}
</script>
</head>
<body>
<div class="container">
<table>
	<tr>
		<th>신고자</th>
		<th>신고내용</th>
		<th>신고이미지</th>
		<th>신고댓글</th>
		<th>신고삭제/신고댓글삭제</th>
	</tr>
	<c:forEach var="dto" items="${list }">
	<tr>
		<td>${dto.m_id }</td>
		<td>${dto.report_content }</td>
		<td>${dto.review_image }</td>
		<td><a href="#">${dto.review_content }</a></td>
		<td>
			<input type="button" value="신고삭제" onclick="pdel(${dto.reportnum})">
			<input type="button" value="신고된 댓글삭제" onclick="rdel(${dto.reviewnum},${dto.review_image })">
		</td>				
	</tr>
	
	</c:forEach>
	
</table>

${paging }
</div>
</body>
</html>