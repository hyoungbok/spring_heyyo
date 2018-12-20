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


<style type="text/css">

a { 
text-decoration:none;
color: #666666;
 }

.table {
border: 1px solid;
width: 50%;
}

</style>
<style type="text/css">


ul {
 list-style:none;
 padding-left: 20px;
}

.border01 {
border-right: 1px solid;
float: left;
margin: -4px 0 0 60px;

padding-right: 20px;
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
    width: 50%;
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




<!-- 메뉴 드랍 -->
 	<div  style="margin-left:25%; margin-top:5%;">
		<table style="border: 1px solid;  align: center;">
			<tr  >
			<td align="center" style="border-right: 1px solid; width: 100px; 	">
				<a href="menu">메뉴 (total)</a>
			</td>
			<td align="center" style=" border-bottom:7px solid #7c7c7c; border-right: 1px solid; height: 40px; width: 100px; background-color: #dfdfdf;	">
				<a href="review">리뷰(total)</a>
			</td>
			<td align="center" style=" width: 100px;">
				<strong><a href="myinfo">정보</a></strong>
			</td>
			</tr>
		</table>
		</div>
		
		<div class="table" style="margin-right: 30px;">
 	
 	<div  style=" border-bottom: 2px solid #343434; padding: 10px 0 10px 0;">
		<div style="padding:5px 20px 0 50px; border-right: 1px solid; float: left;">
		<span style="font-size:40px; ">
					<strong>4.2 </strong>
				</span><br>
				<span> 
					★★★★☆
				</span>
		</div>
		<table>
		<tr>
		<td>
				<ul>
					<li >
						<span>맛</span>
						<span>★★★★☆</span>
					</li>
					<li>
						<span>양</span>
						<span>★★★★☆</span>
					</li>
					<li>
						<span>배달</span>
						<span>★★★★☆</span>
					</li>
				</ul>
				</td></tr>
			</table>
	</div>
	<div class="m" style=" border-bottom: 1px solid ;  padding: 10px 0 10px 10px;">
		리뷰 (total)ㆍ사장님댓글 (total)
		####회원만 버튼 보이게 만드세요###
				<span style="padding-left: 50px;"><button id="myBtn" >리뷰작성</button></span>
		</div>
	
	<div class="m" style=" padding: 10px 0 10px 10px; ">
				<p><span style="font-size: 18px;">(유저 아이드 불러오기)</span><span style="font-size: 14px;">(날짜불러오기)</span></p>
				<span>★★★★☆ | 맛★4  양★4  배달★4</span>
				<p>
				글 내용 아무거나 쓰기 불러오기
				</p>
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
				
	
	<!-- 							 
	<div  >
	
	<table style="border: 1px  solid; width: 50%; padding: 10px 0 10px 0; ">
		<tr>
			<td style="border-right: 1px solid; padding-right: 20px;"align="right">
				<span style="font-size:40px; ">
					<strong>4.2 </strong>
				</span><br>
				<span> 
					★★★★☆
				</span>
			</td>
			<td>
				<ul>
					<li >
						<span>맛</span>
						<span>★★★★☆</span>
					</li>
					<li>
						<span>양</span>
						<span>★★★★☆</span>
					</li>
					<li>
						<span>배달</span>
						<span>★★★★☆</span>
					</li>
				</ul>
			</td>
		</tr>
	</table>
	<table style="border: 1px  solid; width: 50%; ">
		<tr>
			<td style="padding: 10px 0 10px 10px;" >
				리뷰 (total)ㆍ사장님댓글 (total)
				<span style="padding-left: 50px;"><button id="myBtn" >리뷰작성</button></span>
			</td>
		</tr>
		<tr>
			<td style="padding: 10px 0 10px 10px; border-top: 1px  solid;  ">
				<p><span style="font-size: 18px;">(유저 아이드 불러오기)</span><span style="font-size: 14px;">(날짜불러오기)</span></p>
				<span>★★★★☆ | 맛★4  양★4  배달★4</span>
				<p>
				글 내용 아무거나 쓰기 불러오기
				</p>
			</td>
		</tr>
	</table>
	
	
	</div>




 

</div> -->




<!-- 숨기기 -->
<!-- The Modal -->
<FORM name='frm' method='POST' action='./createProc.jsp'
		enctype="multipart/form-data">
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    
      <span class="close">&times;</span>
    <div class="modal-body">
     <div style="margin-top: 60px; font-size: 20px; margin-left: 30px; margin-right: 30px;"> 
     	<TABLE >
    
    <TR>
      <TH>#주문 메뉴들#</TH>
      <td style="font-size: 15px;">
		평점 	★★★★☆ | 맛★4  양★4  배달★4
	  </td>
    </TR>
    <TR>
      <TH>내용</TH>
      <TD><textarea rows="10" cols="45" name="content"></textarea></TD>
    </TR>
   
    
  </TABLE>
		<div style="margin-left: 130px;">
			<input type='submit' value='등록'>
		</div>
	
    		
    	<!-- 	파일등록
    	<input type="file" name="fname" accept=".png,.gif,.jpg" style="font-size:15px;">
    	 -->
    		
    </div>
  
  </div>

</div>
</div>
</FORM>

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