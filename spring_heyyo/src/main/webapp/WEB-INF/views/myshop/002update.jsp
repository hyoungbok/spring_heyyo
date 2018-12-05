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
<div  style="margin-left:20%; margin-top: 50px;">
	<button onclick="location.href='../myshop/002'">수정끝내기</button>
</div>


 	<div  style="margin-left:25%; margin-top:5%;">
		
		<div class="table1" style="color: #666666;">
		 	<button class="accordion">인기메뉴 1</button>
			<div class="panel" style="text-align: left;">
			<p> <input type="text" placeholder=" 기본 세트 1 (후라이드 + 양념)" style="width:60%;">
				<img alt="" src="img/chicken.png" style=" width: 80px; height: 30px;">
				   
			<br>금액 : ￦<input type="text" placeholder=" 50,000">
			<br><br>
		
			<button onclick="location.href='../myshop/002update.jsp'"> 확인</button>
			<input type="file" name="fname" accept=".png,.gif,.jpg">
			</p>
			<p> 기본 세트 2 (간장 + 양념)
				<img alt="" src="img/chicken.png" style=" width: 80px; height: 30px;">
			</p>
			</div>
		 	<button class="accordion">메뉴 2</button>
			<div class="panel" style="text-align: left;">
			<p> 메뉴 등록 해야되는데.... 
			<img alt="" src="img/6.jpg" style=" width: 80px; height: 60px; ">
			</p>
			</div>
		 	<button class="accordion">메뉴 3</button>
			<div class="panel" style="text-align: left;">
			<p> 어떻게 하지?????? 
			<img alt="" src="mg/5.png" style=" width: 80px; height: 60px;">
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



 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 