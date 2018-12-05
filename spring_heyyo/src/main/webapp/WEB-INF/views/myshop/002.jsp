<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 


<style type="text/css">

.table1 {
	padding-bottom: 100%;
	
}
.table0 {
	padding-bottom: 100%;
	text-align: center;
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
table {
display: inline-block;
}

</style>
<style type="text/css">
.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 70%;
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

p {
padding: 20px 0 40px;
border-bottom: 1px solid;
width: 70%;

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
    width: 65%;
    height: 40%;
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

</style>

<script type="text/javascript">
function ndelete() {
	alert("삭제 페이지로 이동합니다.");
	var url = "002delete.jsp";
	location.href= url;
}

</script>
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div class="m" style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/001" class="">업소 수정</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/002" class="actives">메뉴 수정</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/003" class="">리뷰</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/myshop/004" class="">매출 현황</a></th>
 		</tr>
 	</tbody>
 </table>
</div>

 	<div  style="margin-left:25%; margin-top:14%;">
		
		<div class="table1" style="color: #666666;">
		 	<button class="accordion">인기메뉴 1</button>
			<div class="panel" style="text-align: left;">
	<button id="myBtn"> 등록</button>

	
			<p> 기본 세트 1 (후라이드 + 양념)
				<img alt="" src="../img/chicken.png" style=" width: 80px; height: 30px;">
			
			<br>금액 : ￦50,000
			<br><br>
		
	<button type="button" onclick="location.href='../myshop/002update.jsp'"> 수정</button>
	<button type="button" onclick="ndelete()"> 삭제</button>

			</p>
			<p> 기본 세트 2 (간장 + 양념)
				<img alt="" src="../img/chicken.png" style=" width: 80px; height: 30px;">
			</p>
			<p> 기본 세트 3 (후라이드 + 땡초)
				<img alt="" src="../img/chicken.png" style=" width: 80px; height: 30px;">
			</p>
			<p> 기본 세트 4 (간장 + 땡초)
				<img alt="" src="../img/chicken.png" style=" width: 80px; height: 30px;">
			</p>
			</div>
		 	<button class="accordion">메뉴 2</button>
			<div class="panel" style="text-align: left;">
			<p> 메뉴 등록 해야되는데.... 
			<img alt="" src="../img/6.jpg" style=" width: 80px; height: 60px; ">
			</p>
			</div>
		 	<button class="accordion">메뉴 3</button>
			<div class="panel" style="text-align: left;">
			<p> 어떻게 하지?????? 
			<img alt="" src="../img/5.png" style=" width: 80px; height: 60px;">
			</p>
			</div>
		</div>
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
    <div class="modal-body">
     <div style="margin-top: 60px; font-size: 20px; margin-left: 30px; margin-right: 30px;"> 
     	<input type="text" placeholder="기본 세트 1 (후라이드 + 양념)" style="height: 30px; font-size: 20px; width: 60%;">
     	
				<img alt="" src="img/chicken.png" style=" width: 30%; height: 20%;">
			
			<br>금액 : ￦<input type="text" placeholder="50,000" style="height: 30px; font-size: 20px;">
		</div>
			<button onclick="location.href='../myshop/create.jsp'"
			style="font-size:15px;margin-top: 50px; margin-left: 30px;"> 등록</button>
    		<input type="file" name="fname" accept=".png,.gif,.jpg" style="font-size:15px;">
    		
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