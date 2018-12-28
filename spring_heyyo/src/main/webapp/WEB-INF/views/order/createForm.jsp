<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${root}/style/style.css">
<title>Insert title here</title>
</head>  
<script type="text/javascript" src="${root}/style/spinner.js"></script>
<script type="text/javascript">
	function pointSet(name) {
		var obj = this[name];
		var set = this["settlement"];
		var point = document.getElementById("point");
		var p = parseInt(point.firstChild.nodeValue, 10);
		for (var i = 0; i < obj.length; i++) {
			if (p <= obj[i].value) {
				set[i].value = p;
				p = 0;
			} else {
				set[i].value = obj[i].value;
				p -= parseInt(obj[i].value, 10);
			}
		}

	}
	function incheck(f) {
		if(f.o_address.value=="") {
			alert("주소를 입력해주세요");
			return false;
		}
		if(f.o_phone.value=="") {
			alert("번호를 입력해주세요")
			return false;
		}
	}
	$(document).ready(function() {
		$('.check-all').click(function() {
			$('.ab').prop('checked', this.checked);
		});
	});

	function checkOnly(c) {

		var n = document.getElementsByClassName('paymentM');
		var m;

		for (m = 0; m < n.length; m++) {
			if (n[m].value != c)
				n[m].checked = false;
		}
	}

	function checkOnlyOne(b) {

		var x = document.getElementsByClassName('pointchecks');
		var i;

		for (i = 0; i < x.length; i++) {
			if (x[i].value != b)
				x[i].checked = false;
		}
	}
</script>
<body>


<div class="container"><h2>결제하기</h2> 

<form name="frm" method="POST" action="create" onsubmit="return incheck(this)">
	<table>
		<tr>
			<th align="left" style="font-size: 20px;">배달정보</th>
		</tr> 
		<tr>			
			<th><br>주소&nbsp;&nbsp;</th>
			<td align="left"><input type="text" name="o_address"
				placeholder="(필수)상세주소입력"></td> 
		</tr>
		<tr>
			<th><br>전화번호 &nbsp;&nbsp;</th>
			<td align="left">
			<input type="text" placeholder="(필수)전화번호입력"></td>
		</tr>
		<tr>
			<th colspan="1" align="left" style="font-size: 25px;"><br>주문시요구사항</th>
			<td><textarea rows="5" cols="80" name="o_req"
					placeholder="주문시 요청사항이 있으시면 남겨주세요 단,주류 등 청소년 유해물품관련 단어는 입력하실 수 없습니다."></textarea>
			</td>
		</tr> 

			<tr>
				<th align="left" colspan="1" style="color: red; font-size: 20px;">결제수단 선택(현장결제 불가능)</th>
			</tr>
			<tr> 
				<th><strong>알아서배달할게 결제</strong><span style="font-size: 15px; ">&nbsp;|웹 선결제</span></th> 
				<td>
						<label> <i class="icon-check icon-npay"><input
								class="paymentM" type="text" name="o_pay"
								onclick="checkOnly(this.value);">네이버페이</i></label>
				</td>
			</tr>
		<tr>
			<th style="font-size: 22px;" align="left"><br>할인마일리지 선택</th>
			
		<td><br>
			<label>마일리지<span style="color: red; font-size: 15px;">&nbsp;| 1000마일리지 부터
			사용가능 |</span></label>&nbsp;&nbsp; 
					<i class="icon-check"><input class="pointchecks"
						onclick="checkOnlyOne(this.value);"
						type="text" name="o_mileage">1000마일리지&nbsp;&nbsp;</i>
					<i class="icon-check"><input class="pointchecks"
						onclick="checkOnlyOne(this.value);" 
						type="checkbox" name="o_mileage" value="o_mileage">2000마일리지&nbsp;&nbsp;</i> 
					<i class="icon-check"><input class="pointchecks" 
						onclick="checkOnlyOne(this.value);"
						type="checkbox" name="o_mileage" value="o_mileage">3000마일리지&nbsp;&nbsp;</i>
					<i class="icon-check"><input class="pointchecks" 
						onclick="checkOnlyOne(this.value);"
						type="checkbox" name="o_mileage" value="o_mileage">4000마일리지&nbsp;&nbsp;</i>
						<i class="icon-check"><input class="pointchecks" 
						onclick="checkOnlyOne(this.value);" 
						type="checkbox" name="o_mileage" value="o_mileage">5000마일리지&nbsp;&nbsp;</i>
					<br><a href="*" onclick="location.href='om_check()'">적용</a>&nbsp;&nbsp;&nbsp;&nbsp;<span
						style="font-size: 8px;">|마일리지는 한달에 한번씩 초기화 됩니다.|</span>
				</td>
		</tr> 

		<tr>
			<td><p>
			<input type="checkbox" class="check-all"> <label>전체동의</label>
			</p></td>
		</tr>
		<tr>
			<td><input type="checkbox"class="ab"> <label>SMS
			수신동의</label></td>
		</tr>
		<tr>
			<td><input type="checkbox" class="ab"> <label>저기요
					이용약관에 동의합니다. &nbsp;&nbsp;<a href="agree1">(전문보기)</a>
			</label></td>
		</tr>
		<tr>
			<td><input type="checkbox" class="ab"> <label>개인정보
					수집 및 이용에 동의합니다. &nbsp;&nbsp;<a href="agree2">(전문보기)</a>
			</label></td>
		</tr>
		<tr>
			<td><input type="checkbox" class="ab"> <label>개인정보
					제3자 제공에 동의합니다. &nbsp;&nbsp;<a href="agree3">(전문보기)</a>
			</label></td>
		</tr>  

	</table>



  
	<div class="bottom">
		<input type="submit" value="등록"> 
		<input type="button" value="취소" onclick="history.back()">
	</div>
	</form> 
</div>



 
</body>

</html>