<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
*{ 
  font-family: gulim; 
  font-size: 20px; 
} 
.table {
	padding-bottom: 50%;
	
}

a { 
text-decoration:none;
color: #666666;
 }
 .th {
	width : 180px;
	height : 80px;
    background-color: #FAFAFA;
    border-bottom: 1px solid #E0E0E0;
  	font-size: 18px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
 }
  .th {
	width : 120px;
	height : 80px;
    background-color: #dabd8d;
    border-bottom: 1px solid #E0E0E0;
  	font-size: 18px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
 }
 .actives {
    color: #DC1400;
    font-weight: bold;
}

</style>
<!-- <script type="text/javascript"> -->
<!-- var url = "list"; -->
<%-- url = url + "?col=${col}"; --%>
<!-- url = url + "&word=${param.word}"; -->
<!-- location.href=url; -->
<!-- </script> -->
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<Br>
<h2 style="text-align: center;">주문영수증</h2>
<div class="container" style="margin-left:25%; margin-top:5%;">
<!-- 	<table class="table table-bordered" style="width:60%; padding:20px"> -->
<!-- 	<tr> -->
<!-- 	 	<th>주문완료</Th> -->
<!-- 	 </tr> -->
<!-- 	<tr> -->
<!-- 		<th>결제완료</tH> -->
<!-- 	</tr> -->
<!-- 		<tr> -->
<!-- 		<th>식당이름</th> -->
<%-- 		<td>${orderrec.r_name}</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->

<!-- 		<th>주소</th> -->
<%-- 		<td>${orderrec.o_address}</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<th>전화번호</th> -->
<%-- 		<td>${orderrec.m_phone}</td> --%>
		
<!-- 	</tr> -->
<!-- 	<Tr> -->
<!-- 		<th>주문가격</th> -->
<%-- 		<td>${orderrec.o_pay}</td> --%>
<!-- 	</Tr> -->
<!-- 	<tr> -->
<!-- 		<th>주문시간</th> -->
<%-- 		<td>${orderrec.o_date}</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<th>주문내역</th> -->
<%-- 		<td>${orderrec.f_name}</td> --%>
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<th>요청사항</th> -->
<%-- 		<td>${orderrec.o_req}</td> --%>
<!-- 	</tr> -->
<!-- </table> -->

<table class="orderrec" id="orderrec">
				<c:choose>
					<c:when test="${empty orderrec}"><br><br><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음식내역이 없습니다.
					</c:when>
					<c:otherwise>
						<c:forEach var="orderrec" items="${orderrec}">
							<tr>
									<th>식당이름</th>
									<th>주소</th>
		                            <th>전화번호</th>
									<th>주문가격</th>
									<th>주문시간</th>
									<th>주문내역</th>
									<th>요청사항</th>
									<th>주문완료</Th>
									<th>결제완료</tH>
							</tr>
							<tr>
									<td>${orderrec.R_NAME}</td>
									<td>${orderrec.O_ADDRESS}</td>
									<td>${orderrec.M_PHONE}</td>
									<td>${orderrec.O_PAY}</td>
									<td>${orderrec.O_DATE}</td>
									<td>${orderrec.F_NAME}</td>
									<td>${orderrec.O_REQ}</td>
							</tr>
        
			 
										
							</c:forEach>

							
								</c:otherwise>
				</c:choose>
				 
			</table>

	<DIV class="bottom" style="text-align: left">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="button" value="화면" onclick="">
	<input type="button" value="목록" onclick="list()">
	</div>
</div>
</body>
 


	

</html>