<%@ page contentType="text/html; charset=UTF-8" %> 
<% 
	String root = request.getContextPath();
%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 

<title></title> 
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
function sample6_execDaumPostcode() {
	new daum.Postcode({
		oncomplete : function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var fullAddr = ''; // 최종 주소 변수
			var extraAddr = ''; // 조합형 주소 변수

			// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				fullAddr = data.roadAddress;

			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				fullAddr = data.jibunAddress;
			}

			// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			if (data.userSelectedType === 'R') {
				//법정동명이 있을 경우 추가한다.
				if (data.bname !== '') {
					extraAddr += data.bname;
				}
				// 건물명이 있을 경우 추가한다.
				if (data.buildingName !== '') {
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
				fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
			}

		
			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
			document.getElementById('sample6_address').value = fullAddr;

			// 커서를 상세주소 필드로 이동한다.
			document.getElementById('sample6_address2').focus();
		}
	}).open();
}
</script>
<style type="text/css"> 
.m {
   
	position: relative;
    
    padding: 27px 0;
    margin-bottom: 40px;
}

 .txt {
 	font-size: 16px;
 	font-weight: bold;
 }
 .stxt {
    font-size: 14px;
    font-weight: normal;
 }
 .table{
 border-top: 1px solid #E0E0E0;
 }
 .th {
   
    background-color: #FAFAFA;
    border-bottom: 1px solid #E0E0E0;
    border-right: 1px solid #E0E0E0;
    font-size: 12px;
    font-weight: bold;
    vertical-align: middle;
    text-align: center;
 }
  td {
    border-bottom: 1px solid #E0E0E0;
    min-height: 56px;
    font-size: 12px;
    font-weight: normal;
    vertical-align: middle;
    padding: 12px 14px;
 }
.s{
    width: 70px;
}

.ss {
    border: 1px solid #E0E0E0;
    background-color: #FFF;
    font-size: 11px;
    padding: 15px;
    height: 95px;
    overflow-y: scroll;
    box-sizing: border-box;
}

.table0 {
	padding-bottom: 300%;
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
 .active {
    color: #DC1400;
    font-weight: bold;
}

</style> 
</head> 
<!-- *********************************************** -->
<body>
<!-- *********************************************** -->
<div style=" float: left; width: 20%; padding:10px;">
<table class="table0" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/01" class="">핫해요 소개</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/02" class="">입점절차</a></th>
 		</tr>
 		<tr>
 			<th class="th0"><a href="<%=root %>/shop/03" class="active">온라인 입점신청</a></th>
 		</tr>
 	</tbody>
 </table>
</div>

<div>
 <div class="m" style="margin-left:20%; border-bottom: 2px solid #343434;">
	<h2>
	온라인 입점신청서
	</h2>
	<p>
	운영중인 음식점을 '요기요'에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객선터
	(01-3447-3612)로 연락주세요
	</p>
</div>

<div class="txt" style="margin-bottom: 50px;">
	사업자 정보 
	<span class="stxt">
	<em style="color: red">*</em>
	필수 입력 정보
	</span>
</div>
 
 <table class="table" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th">사업자 번호 <em style="color: red">*</em></th>
 			<td>
	 			<input type="text" class="s">
	 			<span>-</span>
	 			<input type="text" class="s">
	 			<span>-</span>
	 			<input type="text" class="s">
	 			<button type="button" onclick="">조회</button>
 			</td>
 		</tr>
 		<tr>
 			<th class="th">사업자등록증 사본등록 <em style="color: red">*</em></th>
 			<td>
 				<input type="file" >
 				
 			</td>
 		</tr>
 		<tr>
 			<th class="th">영업신고증 사본등록 <em style="color: red">*</em></th>
 			<td>
 				<input type="file" >
 				
 			</td>
 		</tr>
 		<tr>
 			<th class="th">사업주명 <em style="color: red">*</em></th>
 			<td>
 				<input type="text" >
 				
 			</td>
 		</tr>
 		<tr>
 			<th class="th">사업자 휴대폰 번호 <em style="color: red">*</em></th>
 			<td>
 				<select class="s">
 					<option value="010">010
 					<option value="011">011
 					<option value="016">016
 					<option value="017">017
 					<option value="018">018
 					<option value="019">019
 				</select>
 				<span>-</span>
	 			<input type="text" class="s">
	 			<span>-</span>
	 			<input type="text" class="s"> 
	 			<button type="button" onclick="#">인증번호 전송</button>		
	 			<p style="color:gray;">인증번호를 받지 못했다면 [인증번호 재전송] 버튼을 클릭해 주세요.</p>		
 			</td>
 		</tr>
 		<tr>
 			<th class="th">인증번호 입력 <em style="color: red">*</em></th>
 			<td>
 				<input type="text" >
 				
 			</td>
 		</tr>			
 	</tbody>
 </table>
<div class="txt" style="margin-top: 50px; margin-bottom: 50px; ma">
	음식점 정보
</div>
  <table class="table" style="color: #666666;">
 	<tbody>
 		<tr>
 			<th class="th">음식점 이름 <em style="color: red">*</em></th>
 			<td>
	 			<input type="text">	 			
 			</td>
 		</tr>
 		<tr>
 			<th class="th">사업자 휴대폰 번호 </th>
 			<td>
 			<select class="s">
                <option value="02">02</option>
                <option value="031">031</option>
                <option value="032">032</option>
                <option value="033">033</option>
                <option value="041">041</option>
                <option value="042">042</option>
                <option value="043">043</option>
                <option value="044">044</option>
                <option value="051">051</option>
                <option value="052">052</option>
                <option value="053">053</option>
                <option value="054">054</option>
                <option value="055">055</option>
                <option value="061">061</option>
                <option value="062">062</option>
                <option value="063">063</option>
                <option value="064">064</option>
                <option value="010">010</option>
                <option value="011">011</option>
                <option value="016">016</option>
                <option value="017">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
                <option value="0130">0130</option>
                <option value="070">070</option>
                <option value="080">080</option>
                <option value="0507">0507</option>
                <option value="0506">0506</option>
                <option value="0505">0505</option>
                <option value="0504">0504</option>
                <option value="0503">0503</option>
                <option value="0502">0502</option>
                <option value="0303">0303</option>
             </select>
 				<span>-</span>
	 			<input type="text" class="s">
	 			<span>-</span>
	 			<input type="text" class="s"> 
 			</td>
 		</tr>
 		<tr>
 			<th class="th">음식점 주소 <em style="color: red">*</em></th>
 			<td>
 				<input type="text" name="zipcode" size="7" id="sample6_postcode" placeholder="우편번호">
 				<input type="text" name="address" size="40"
 					id="sample6_address" placeholder="동,면,읍 주소">
 				<input type="button" value="주소검색" onclick="sample6_execDaumPostcode()">
 				<br><input type="text" name="address" size="52"
 					id="sample6_address" placeholder="주소">
 			</td>
 		</tr>
 		<tr>
 			<th class="th">업종 카테고리 <em style="color: red">*</em> </th>
 			<td>
 			<select style="width: 150px;">
                  <option value="">선택해주세요</option>
                  <option value="13">분식</option>
                  <option value="14">중식</option>
                  <option value="4">치킨</option>
                  <option value="2">한식</option>
                  <option value="17">족발보쌈</option>
                  <option value="1">피자양식</option>
                  <option value="18">일식돈까스</option>
                  <option value="134">프랜차이즈</option>
              </select>
          <p style="color: gray;">
          야식카테고리는 회사 정책상 영업시간에 따라 노출 되는 카테고리로 단독 설정이 불가합니다
          </p>		
 				
 			</td>
 		</tr>
 		
 		<tr>
 			<th class="th">배달 가능 여부 <em style="color: red">*</em></th>
 			<td>
 				<input type="radio"  value="배달만 가능" checked="checked">배달만 가능
 				<input style="margin-left: 50px;" type="radio"  value="배달+테이크아웃 가능" >배달+테이크아웃 가능
 				
 			</td>
 		</tr>
 		<tr>
 			<th class="th">전단지 등록</th>
 			<td>
 				<input type="file" >
 				
 			</td>
 		</tr>			
 	</tbody>
 </table>
 
 <div class="ss" style="margin-top: 50px; width: 60%; margin-left: 20%;"  >
 	<strong>개인 정보 수집 및 이용 동의</strong>
 	<p>
 	"회사"는 다음과 같이 "사장님"의 개인정보를 수집합니다. 
 	처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 
 	활용되지 않으며, 수집·이용목적이 변경되는 경우에는 「개인정보보호법」에 
 	따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.
	</p>
	<br>
	<p>
	요기요 온라인 입점신청 시 수집하는 개인정보
 	</p>
 </div>
 
 <div style="text-align: center" > 
  <label >
 	 <input type="checkbox" name="agree" value="1" style="font-size: 15px; margin-top: 30px;" >
  	  개인정보 수집 및 이용에 동의 합니다.(필수)
  	 
  </label> 
</div>
<div style="text-align: center; margin-top: 50px">
  <input type="submit" value="입점 신청 완료" >
 
</div>

</div>

 
<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html> 