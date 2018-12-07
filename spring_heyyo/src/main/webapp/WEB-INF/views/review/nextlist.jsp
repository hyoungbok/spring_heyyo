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
<script type="text/javascript">
	function viewNext(){
		
	}
</script>
</head>
<body>
<table>
	<tr>
		<td style="text-align:right">
			<span style="font-size:100px;">4.2 |</span>
		</td>
		<td style="text-align:left;width:50%";>
			<ul>
				<li>맛&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;★★★★☆ &nbsp;4.2</li>
				<li>양&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;★★★★☆ &nbsp;4.2</li>
				<li>배달&nbsp;★★★★☆ &nbsp;4.1</li>
				
			</ul>
		</td>
	</tr>
</table>
 <table id="table1">
 	<tr>
 	
	 	<td>
	 	리뷰 ${totalRecord}개 사장님 댓글 ${replyTotal}개
	 	</td>
 	
 	</tr>
 	</table>
 	
	 		 <table>
	 		 	<tr>
	 		 		<td width="95%">${m_id } 님 ${review_date }</td>
	 		 		<td>신고</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">★★★★☆|맛★5 양★5 배달★4</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">${f_name}/${o_amount }(메뉴선택(콜라 500mL),사이즈 선택(中)))</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">${review_content }</td>
	 		 	</tr>
	 	  	</table>
	 	  
	 		 <table>
	 		 	<tr>
	 		 		<td style="width:95%;">xu**님 2018년 11월 6일</td>
	 		 		<td>신고</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">★★★★☆|맛★5 양★5 배달★4</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">목살 두부 김치찜/1(메뉴 선택(사이다 500mL))</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">고기 진짜 많았어요...ㅎㅎㅎ</td>
	 		 	</tr>
	 	  	</table>
	 	  
	 		 <table>
	 		 	<tr>
	 		 		<td style="width:95%;">wo**님 2018년 11월 5일</td>
	 		 		<td  style="width:5%;">신고</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">★★★★☆|맛★4 양★4 배달★4</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">
	 		 		<img src="${root }/review/storage/${review_image }">
	 		 		</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">목살 두부 김치찜/1(메뉴 선택(사이다 500mL)),튀김만두（15개）/1</td>
	 		 	</tr>
	 		 	<tr>
	 		 		<td colspan="2">항상 잘먹고있습니다. 오늘도 맛있게 먹었어요. 다만 제가 비계부분을 못먹는터라, 비계가 적은 부분으로 부탁드렸는데 상당히 많은 부분이 비계부분이었어서 고기는 평소보다 적게 먹었어요 ㅠㅠ 그래도 잘먹었습니다!</td>
	 		 	</tr>
	 	  	</table>
	 	  	<table>
	 	  		<tr>
	 	  			<td style=text-align:center;>
	 	  				<a href="javascript:viewNext()">더 보기</a>
	 	  			</td>
	 	  		</tr>
	 	  	</table>
	 
</body>
</html>