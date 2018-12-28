<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<%@ include file="/ssi/ssi.jsp"%>

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.5/angular.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/style/style.css">
<%-- <script type="text/javascript" src="${root}/style/protractor.js"></script>  --%>
<script type="text/javascript" src="${root}/style/spinner.js"></script>
<title></title> 
<!-- 메뉴드랍  -->
<style type="text/css">

.table1 {
	padding-bottom: 50%;
	
}

a { 
text-decoration:none;
color: #666666;
 }
 .th0 {
	width : 180px;
	height : 80px;
    background-color: #FAFAFA;
    border-bottom: 1px solid #E0E0E0;
  	font-size: 18px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
 }
  .th1 {
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
<style type="text/css">
.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 450px;
    border: none;
    text-align: left;
    outline: none;
    font-size: 18px;
    transition: 0.4s;
   	border-bottom: 1px solid #c8c8c8;
  
}
.active, .accordion:hover {
    background-color: #ccc;
}
.accordion:after {
    content: '\002B';
    color: #777;
    font-weight: bold;
    float: right;
    margin-left: 5px;
}
.active:after {
    content: "\2212";
}
.panel {
    padding: 0 18px;
    background-color: white;
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.2s ease-out;
}
#myBtn p {
border-bottom: 1px solid;
}
p {
padding: 20px 0 40px;

}
img {
float: right;

}
</style>



<!-- 숨기기 -->
<style type="text/css">
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 28%;
    height:75%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}
/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}
@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color:black;
    float: right;
    font-size: 30px;
    font-weight: bold;
    padding-right: 30px;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}
.ra {
 	width:18px;
 	height:18px;
 	border:1px;
}
.table {
border: 1px solid;
width: 35%;
margin-left:25%;
float: left;
margin-bottom: 60px;
}

</style>
</head> 
<script>


function myFunction() {
    var x, text;

           // Get the value of the input field with id="numb"
           x = document.getElementById("numb").value;

          // If x is Not a Number or less than one or greater than 10
         if (isNaN(x) || x < 1 || x > 10) {
                text = "Input not valid";
         } else {
                text = "Input OK";
         }
          document.getElementById("demo").innerHTML = text;
      }
      </script>

<!-- *********************************************** -->
<body>
<!-- <div ng-app="" ng-init="lan={myModal3='myModal3',number:'number'}"> -->
<!-- <p>숫자계산: <span ng-bind="myModal3+number"></span></p> -->
<!-- </div> -->

<h1>JavaScript Can Validate Input</h1>

<p>Please input a number between 1 and 10:</p>

<input id="numb" type="number">

<button type="button" onclick="myFunction()">Submit</button>

<p id="demo"></p>

<!-- 메뉴바 -->

 	<div  style="margin-left:25%; margin-top:5%;">
		<table style="border: 1px solid; ">
			<tr >
			<td align="center" style=" border-bottom:7px solid #7c7c7c; border-right: 1px solid; height: 40px; width: 100px; background-color: #dfdfdf;	">
				<strong><a href="/menu">메뉴(total)</a></strong>
			</td>
			<td align="center" style="border-right: 1px solid; width: 100px;">
				<a href="review">리뷰(total)</a>
			</td>
			<td align="center" style=" width: 100px;">
				<a href="myinfo">정보</a>
			</td>
			</tr>
		</table>
		</div>
<!-- 메뉴 드랍 -->

		<div class="table1" style="color: #666666; margin-left:25%; padding-right: 30px; float: left;">
		 	<button class="accordion">인기메뉴 1</button>
			<div class="panel" style="text-align: left; ">
			<div id="myBtn">
			<table class="read" id="abcd">
				<c:choose>
					<c:when test="${empty read3}"><br><br><br>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음식내역이 없습니다.
					</c:when>
					<c:otherwise>
						<c:forEach var="read3" items="${read3}">
						
							
								<tr>
									<th>음식이름</th>
									<th>음식정보</th> 
									<th>가격</th>
									
								</tr>
       
								<tr>
									<td id="abc">${read3.F_NAME}</td>
									<td>${read3.F_CONTENT}</td> 
									<td id="price">${read3.F_PRICE}</td>
									
								</tr>
							 
										
							</c:forEach>

							
								</c:otherwise>
				</c:choose>
				 
			</table>
			</div>
			</div>
		 </div>


<script type="text/javascript">
// function payment(){
// 	var url="/order/create";
// 	url=  url+"?m_id=${dto.m_id}";
	
// 	location.href=url;
// }


// $(function() {
// 			$("form").on("submit", function(event) {	// <form>요소에 "submit" 이벤트가 발생할 때,
// 				event.preventDefault();					// 서버로 전송하지 않음.
// 				$("#text").html($(this).serialize());	// 입력받은 데이터를 직렬화하여 나타냄.
// 			});
// 		});
		


</script>
<!-- 	//옆에 있는 주문표출력 -->
<div class="container" id="datapass">
<FORM name="frm1" oninput="m.value=parseInt(myModal5.value)" action="create">
	

	<input type="hidden" name="food_code" value="${food_code}">

	
	 <table style="border: 1px solid; width: 20%;">
		 <tr style="background-color: #2a2a2a; color: #ffffff ">
			 <th style="border-bottom: 1px solid; height: 40px; padding: 0 0 0 20px;">
				 주문표
			 </th>
		 </tr> 
		 <tr>
		 	<th>음식이름</th>
		 	<td><output id="myModal4" name="myModal4"></output>
		 	</td>
		 	
		 </tr>
		 <tr>  
		 	<th>가격</th>
		 	<td><output id="myModal5" name="myModal5"></output></td>
		 </tr>
		 <tr>
			
			
			<td>
			<output id="myModaltotal" for="myModal5" name="myModaltotal" ></output>
			합계</td>
		 	
		 </tr>

	 </table>

		<button  type="submit"
		style="background-color:red; border: 1px solid #ffffff; color: #ffffff;
		font-size: 18px; height:60px; width:20%;  margin-top: 10px;"
		>주문하기
	 	</button>
	 			<script type="text/javascript">
document.getElementById('f_name').value =  $("#myModal4").text();
</script>
	 	
	 	</FORM>
	 	</div>
	

<!-- 여기까지 메뉴onchange실행시켜서  f_code를 영수증에 보내는과정 -->
<script>
var acc = document.getElementsByClassName("accordion");
var i;


for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
<script type="text/javascript">
function food(){
	alert(document.getElementsByName("che1").item(0).innerHTML);
}

var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope) {
});
</script>



 <!-- 숨기기 (영수증 온,오프창 onchange에 받아온 값을 표현하기 위한 테이블)-->
<!-- The Modal -->
<FORM name="frm" oninput="x.value=parseInt(myModal2.value)*parseInt(number.value)" action="/order/menu">
<div id="myModal" class="modal" >
  <!-- Modal content -->
  <div class="modal-content">
       <span class="close">&times;</span>
   <div class="modal-body"style="text-align: center; font-size: 20px; 
    	padding: 30px; margin-bottom:10px; border-bottom: 1px solid;" >
	
      		
 		<div id="myModal1"></div>
    </div>
    
    <div class="modal-body"style=" font-size: 18px; 
    	padding: 15px;  border-bottom: 1px solid; " >
      		<strong >가격</strong>	
     		
		<div style=" float: right;">
      
      		<input id="myModal2" readonly="readonly"></input>
		</div>
    </div>
    <div style="padding: 15px; border-bottom: 1px solid;">
    	<div>
    		<strong style=" font-size: 18px; ">메뉴 선택</strong>
    		<span style="color: red;">(선택)</span>
    	</div>
    	<div style="margin-top: 10px;">
    		<div>
    		<input class="ra" type="radio" name="menu" value="기본1" checked ><span style="font-size: 15px;">기본1</span>
		    		<div style=" float: right;">
		      
			      		<span >추가비용없습니다.</span>
					</div>
    		</div>
    		<div style="margin-top: 15px;  margin-bottom: 60px;">
    		<input class="ra" type="radio" name="menu" value="기본2"><span style="font-size: 15px;">기본2</span>
    				<div style=" float: right;">
		      
			      		<span >추가비용없습니다.</span>
					</div>
    		</div>
    	  </div>
     
	
	 	   
	    <div class="modal-body" style="padding: 15px; border-bottom: 1px solid;">
	    	<div class="container">
	    		<div>
	    		<strong style="font-size: 20px;">수량</strong>
	    		</div>
	 
	    		<input id="number" type="number" name="number" value='0' />
	   			
				</div>
			</div>		
	 
	    		
	    
	    <div class="modal-body" style="padding: 15px; border-bottom: 1px solid;">
	    	<div>
<!-- 	    	총금액출력 구현하기 -->
	    		<strong style=" font-size: 20px; ">총금액</strong>

	   			<div style=" float: right;">
			         <output id="myModalprice" for="myModal2 number" name="x"></output>
				</div>
	    	</div>
	    </div>
	   </div>
	   
	 	
	   					 	    
	  <div  style="text-align: center; font-size: 20px; 
	    	padding: 30px;border-bottom: 1px solid;background-color:#c8c8c8 " >
				<input type="button" onclick="history.back()" value="주문취소">
<!-- 				<a href=""><span>주문 취소	</span></a> -->
	    </div>
     
	   <div class="modal-body"style="text-align: center; font-size: 20px; 
	    	padding: 30px; margin-bottom:10px; border-bottom: 1px solid; background-color:red; " >
	
	      		<strong><input  id="datapass1" type="button" value="주문등록"></strong>
<!-- 	      		<a href="" style="color:#ffffff">주문 등록</a>	 -->
	    </div>
	  
	    </div>
	  
</div>

 </form>


<script>





//Get the button that opens the modal
var atn = document.getElementById("datapass1");
var qwe = document.getElementById("myModal4");



atn.onclick = function() {

	
    modal.style.display = "block";
	document.getElementById("myModal4").innerHTML = document.getElementById("myModal1").innerHTML;
	document.getElementById("myModal5").innerHTML = document.getElementById("myModalprice").value;
//	document.getElementById("f_name").innerHTML = document.getElementById("myModal1").innerHTML;
/* 	document.frm1.f_name.value = $("#myModal4").text();
	document.frm1.f_name.value = $("#myModal5").text();
	document.frm1.f_name.value = $("#myModal1").text(); */
	
/* 	alert(${document.getElementById('myModal4').value}	);
	var enc = document.getElementById("myModal4").value;
	 
	$('input[name=f_name]').attr('value',enc); */
	
	

}

//예외체크
$.ajaxSetup({
    error: function(jqXHR, exception) {
        if (jqXHR.status === 0) {
            alert('Not connect.\n Verify Network.');
        }
        else if (jqXHR.status == 400) {
            alert('Server understood the request, but request content was invalid. [400]');
        }
        else if (jqXHR.status == 401) {
            alert('Unauthorized access. [401]');
        }
        else if (jqXHR.status == 403) {
            alert('Forbidden resource can not be accessed. [403]');
        }
        else if (jqXHR.status == 404) {
            alert('Requested page not found. [404]');
        }
        else if (jqXHR.status == 500) {
            alert('Internal server error. [500]');
        }
        else if (jqXHR.status == 503) {
            alert('Service unavailable. [503]');
        }
        else if (exception === 'parsererror') {
            alert('Requested JSON parse failed. [Failed]');
        }
        else if (exception === 'timeout') {
            alert('Time out error. [Timeout]');
        }
        else if (exception === 'abort') {
            alert('Ajax request aborted. [Aborted]');
        }
        else {
            alert('Uncaught Error.n' + jqXHR.responseText);
        }
    }
});
//ajax비동기 연결하기  onchange에 발생한 f_code를 받아오는 과정
function datapass(){
		var f = document.frm;
		var f_name = f.f_name.value;
		var f_price = f.f_price.value;
		var x = f.x.value;
		
		
		var url = "/order/menu"; //받아올 데이터 폼으로 경로설정한곳에서 받아온다. 

		$.ajax({
			url : url,
			type: "GET",	
			dataType : 'text', //데이터타입을 text로 받아옴
			data : {"myModal1":myModal1,"f_price":f_price,"x":x},
			success : function(data){
				$("#myModal4").text(data.trim()).css("color","red");
			}
		});
	}
	



// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");
 
// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

btn.onclick = function() {

	
    modal.style.display = "block";
	document.getElementById("myModal1").innerHTML = document.getElementById("abc").innerHTML;
	document.getElementById("myModal2").value = document.getElementById("price").innerHTML;
	document.getElementById("mymodal3").value = document.getElementById("Ordercart").innerHTML;
	
	

}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";

    }
}
</script> 

 

<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 