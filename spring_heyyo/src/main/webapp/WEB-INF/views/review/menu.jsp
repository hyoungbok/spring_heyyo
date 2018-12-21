<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->




 	<div  style="margin-left:25%; margin-top:5%;">
		<table style="border: 1px solid; ">
			<tr >
			<td align="center" style=" border-bottom:7px solid #7c7c7c; border-right: 1px solid; height: 40px; width: 100px; background-color: #dfdfdf;	">
				<strong><a href="./menu.jsp">메뉴(total)</a></strong>
			</td>
			<td align="center" style="border-right: 1px solid; width: 100px;">
				<a href="./review.jsp">리뷰(total)</a>
			</td>
			<td align="center" style=" width: 100px;">
				<a href="./myinfo.jsp">정보</a>
			</td>
			</tr>
		</table>
		</div>
<!-- 메뉴 드랍 -->
		
		<div class="table1" style="color: #666666; margin-left:25%;  	padding-right: 30px; float: left;">
		 	<button class="accordion">인기메뉴 1</button>
			<div class="panel" style="text-align: left; ">
			<div id="myBtn">
			<p> 기본 세트 1 (후라이드 + 양념)
				<img alt="" src="<%=root %>/img/chicken.png" style=" width: 50px; height: 30px;">
			
			<br>금액 : ￦50,000
			<br><br>
		
	
			</p>
		
			<p> ##반복해야됩니다.####기본 세트 2 (간장 + 양념)
				<img alt="" src="<%=root %>/img/chicken.png" style=" width: 50px; height: 30px;">
			</p>
			<p>  ##반복해야됩니다.####기본 세트 3 (후라이드 + 땡초)
				<img alt="" src="<%=root %>/img/chicken.png" style=" width: 50px; height: 30px;">
			</p>
			<p>  ##반복해야됩니다.####기본 세트 4 (간장 + 땡초)
				<img alt="" src="<%=root %>/img/chicken.png" style=" width: 50px; height: 30px;">
			</p>
			</div>
			</div>
		 </div>

	<div >
	 <table style="border: 1px solid; width: 20%;">
		 <tr style="background-color: #2a2a2a; color: #ffffff ">
			 <td style="border-bottom: 1px solid; height: 40px; padding: 0 0 0 20px;">
				 주문표
			 </td>
		 </tr>
		 <tr>
			 <td style="height: 100px; padding: 0 0 0 20px;">
				<p> 주문표에 담긴 메뉴가 없습니다</p>
				
			 </td>
		 </tr>
	 </table>

		<button  type="button" onclick="location.href='#'" 
		style="background-color:red; border: 1px solid #ffffff; color: #ffffff;
		font-size: 18px; height:60px; width:20%;  margin-top: 10px;"
		>주문하기
	 	</button>
	
</div>

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



 
 <!-- 숨기기 -->
<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
 
            		
      <span class="close">&times;</span>
    <div class="modal-body"style="text-align: center; font-size: 20px; 
    	padding: 30px; margin-bottom:10px; border-bottom: 1px solid;" >

      		<strong >메뉴이름</strong>	
    </div>
    <div class="modal-body"style=" font-size: 18px; 
    	padding: 15px;  border-bottom: 1px solid; " >
      		<strong >가격</strong>	
		<div style=" float: right;">
      
      		<span >20000</span>
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
     </div>
	 	   
	    <div class="modal-body" style="padding: 15px; border-bottom: 1px solid;">
	    	<div>
	    		<strong style=" font-size: 20px; ">수량</strong>
	   			<div style=" float: right;">
			      
		      		<button> 누르는거 만드세요</button>
				</div>
	    	</div>
	    </div>
	    <div class="modal-body" style="padding: 15px;">
	    	<div>
	    		<strong style=" font-size: 20px; ">총금액</strong>
	   			<div style=" float: right;">
			      <span >금액이 없습니다.</span>
		      		
				</div>
	    	</div>
	    </div>

	    
	   <div   style="text-align: center; font-size: 20px; 
	    	padding: 30px;border-bottom: 1px solid;background-color:#c8c8c8 " >
				<a href=""><span>주문 취소	</span></a>
	    </div>
    
	   <div class="modal-body"style="text-align: center; font-size: 20px; 
	    	padding: 30px; margin-bottom:10px; border-bottom: 1px solid; background-color:red; " >
	
	      		<strong  ><a href="" style="color:#ffffff">주문 등록</a></strong>	
	    </div>
  
  </div>

</div>


<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
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