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
var height="${param.scroll}";



$(document).ready(function() {
	
	
	
	if(height != ""){
		$('html, body').animate({scrollTop : height}, 400);
	}
	});



$(window).scroll(function () {
	
	height = $(document).scrollTop();
	
	  $("input[name=scroll]").val(height);
	}); 
	
function nextReview(n){
	$("#page").empty();
	
	
    var col = "${col}";
    var word = "${word}";
    var r_code ="${param.r_code}";
    var nowPage = n;
   // var nowPage = "${nowPage}";
 	
     
    // 사용자 ID(문자열)와 체크박스 값들(배열)을 name/value 형태로 담는다.
    var allData = { "col": col, "word": word,"nowPage":nowPage, "r_code":r_code };
     
    $.ajax({
        url:"next",
        type:'GET',
        async:false,
        data: allData,
        success:function(data){
            
            var str = $("#next").html();
            	str = str+data;
            col = "$('#col').last().val()";
           	word = "$('#word').last().val()";
            nowPage = "$('#nowPage').last().val()";
            allData = { "col": col, "word": word,"nowPage":nowPage,"r_code":r_code };
            $("#next").html(str);
        },
        error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
            self.close();
        }
    });
}
	
function report(reviewnum){
	if('${sessionScope.id}'==""){
		alert("로그인후 신고하세요");
	}else{
	var url = "${root}/report/create";
	url = url + "?reviewnum="+reviewnum;
	url = url + "&nowPage=${nowPage}";
	url = url + "&r_code=${param.r_code}";
	location.href = url;
	}
	//window.open(url, "width=500, height=400");
}

function onlyimg(){
	
	var url = "list";
	
	url = url + "?r_code=${param.r_code}";
	url = url + "&col=review_image";
	
	location.href=url;
}
function totalreview(){
	
	var url = "list";
	
	url = url + "?r_code=${param.r_code}";
	
	
	location.href=url;
}

</script>
</head>
<body>
<table>
	<tr>
		<td style="text-align:right">
			<span style="font-size:100px;">${avgstar } </span>
		</td>
		<td style="text-align:left;width:50%";>
			<span style="font-size:100px;">
				
				<c:forEach var="i" begin="1" step="1" end="${avgstar/1 }">
				<img src="${root }/review/review_stars/full_gold_star.png"
					style="width: 100px; height: auto;">
				</c:forEach>
				<c:if test="${avgstar%1 >0}">
				<img src="${root }/review/review_stars/half_gold_star.png"
					style="width: 100px; height: auto;">
				</c:if>
				
			</span>
		</td>
	</tr>
</table>
 <table id="table1">
 	<tr>
 	
	 	<td>
	 	리뷰 ${totalRecord}개 사장님 댓글 ${replyTotal}개
	 	</td>
 		<td>
		 	<c:choose>
		 		<c:when test="${param.col == 'review_image' }">
		 		<input type="button" value="전체리뷰" onclick="javascript:totalreview()";>
		 		</c:when>
		 		
		 		<c:otherwise>
		 		<input type="button" value="사진리뷰만" onclick="javascript:onlyimg();">
		 		</c:otherwise>
		 	</c:choose>
 		</td>
 	</tr>
 	</table>
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
		 		<img src="${root }/review/storage/${dto.review_image }" 
		 			style="width:100%;height:auto;">
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
<%-- 			 	<c:when test="${sessionScope.bussinessID == bussinessID}"> --%>
			 		
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
	 		 
	 	  
	 		
	 	
	<div id="next">
</div>
 <div id="page">
 ${paging}
 </div>
</body>


</html>