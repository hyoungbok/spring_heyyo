<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi.jsp" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* window.onclick=function(){
	reset();
}; */
function reset(){
	var i = 10;
	for(var j=1;j<=i;j++){
		if(j%2!=0){
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/leftemptystar.jpg";
		}else{
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/rightemptystar.jpg";
		}
		document.getElementById("emptystar"+j).onmouseout=function(){
			normalImg(this);
		};
		document.getElementById("emptystar"+j).onclick=function(){
			stableImg(this);
		};
		document.getElementById("emptystar"+j).onmouseover=function(){
			fullImg(this);
		};
	}
}

function fullImg(x){
	var i = x.id.substr(9);
	for(var j=1;j<=i;j++){
		
		if(j%2!=0){
			
				document.getElementById("emptystar"+j).src="${root}/review/review_stars/leftstar.jpg";
			
		}else{
			
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/rightstar.jpg";
			
		}
	}
	
	
}
function normalImg(x){
	var i = x.id.substr(9);
	for(var j=1;j<=i;j++){
		if(j%2!=0){
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/leftemptystar.jpg";
		}else{
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/rightemptystar.jpg";
		}
	} 
}
function stableImg(x){
	var i = x.id.substr(9);
	document.getElementById("frm").star.value=i;
	for(var j=1;j<=i;j++){
		if(j%2!=0){
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/leftstar.jpg";
			document.getElementById("emptystar"+j).onmouseout="";
			
			
		}else{
			document.getElementById("emptystar"+j).src="${root}/review/review_stars/rightstar.jpg";
			document.getElementById("emptystar"+j).onmouseout="";
		}
			document.getElementById("emptystar"+j).onmouseover=function(){
				reset();
			};
	}
	
}

</script>
</head>
<body>
	<div id="container">
    <h2>리뷰 수정 페이지</h2>
    
    <form id="frm" action="./update" method='POST'
        enctype="multipart/form-data">
    <input type="hidden" name="star" value="0">
	<br>
	<br>
	<img src="${root}/review/review_stars/leftemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar1">
	<img src="${root}/review/review_stars/rightemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar2">
	<img src="${root}/review/review_stars/leftemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar3">
	<img src="${root}/review/review_stars/rightemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar4">
	<img src="${root}/review/review_stars/leftemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar5">
	<img src="${root}/review/review_stars/rightemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar6">
	<img src="${root}/review/review_stars/leftemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar7">
	<img src="${root}/review/review_stars/rightemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar8">
	<img src="${root}/review/review_stars/leftemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar9">
	<img src="${root}/review/review_stars/rightemptystar.jpg" 
	onmouseover="fullImg(this)" onmouseout="normalImg(this)" onclick="stableImg(this)"
	width="32" height="32" style="margin:-3px;" id="emptystar10">
		<br>
	
	<textarea name="content" 
	placeholder="리뷰를 수정해주세요"
	rows="10" cols="100" required="required"></textarea>
	<br><br>
	<input type="file" name="fname" accept=".png,.jpeg,.jpg,.gif">
	<br><br>
	<input type="submit" value="수정">
</form>
</div>
</body>
</html>