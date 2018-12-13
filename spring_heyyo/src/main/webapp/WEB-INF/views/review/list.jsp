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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
function nextReview(n){
	$("#page").empty();
	
	// 사용자 ID를 갖고 온다.
    var col = "${col}";
    var word = "${word}";
    var nowPage = n;
   // var nowPage = "${nowPage}";
 	
     
    // 사용자 ID(문자열)와 체크박스 값들(배열)을 name/value 형태로 담는다.
    var allData = { "col": col, "word": word,"nowPage":nowPage };
     
    $.ajax({
        url:"next",
        type:'GET',
        async:false,
        data: allData,
        success:function(data){
            alert("완료!");
            var str = $("#next").html();
            	str = str+data;
            col = "$('#col').last().val()";
           	word = "$('#word').last().val()";
            nowPage = "$('#nowPage').last().val()";
            allData = { "col": col, "word": word,"nowPage":nowPage };
            $("#next").html(str);
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });
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
	 		 
	 	  
	 		
	 	 <!--  	<table>
	 	  		<tr>
	 	  			<td style=text-align:center;>
	 	  				<a href="javascript:viewNext()">더 보기</a>
	 	  			</td>
	 	  		</tr>
	 	  	</table> -->
	<div id="next">
</div>
 <div id="page">
 ${paging}
 </div>
</body>


</html>