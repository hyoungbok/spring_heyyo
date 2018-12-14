<header>
	<h2>Header</h2>
	<div class="search">
		<button onclick="getLocation()">GPS</button>

		<input id="address" type="text" size="30"></input>
	
		<button onclick="getRestaurantList()">search</button>
	</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b30b00931fa8a35ddf75f72fea97c104&libraries=services"></script>
<script>
var addr = document.getElementById("address");

var geocoder = new daum.maps.services.Geocoder();

var categorycode = "C00";
var bubjungdongcode = "";
var addressName = "";

function getRestaurantList() {
	if(bubjungdongcode.length == 7){
		var url = "${root}/" + bubjungdongcode + "/" + categorycode;
		location.href = url;
	}
}

function getLocation() {
  if (navigator.geolocation) {
    navigator.geolocation.watchPosition(getAddrAndCode);
  } else { 
    alert("Geolocation is not supported by this browser.");
  }
}

function getAddrAndCode(position) {
	searchRegionAddrFromCoords(position, function(result, status) {
		if (status === daum.maps.services.Status.OK) {
			bubjungdongcode = !!result[0].code ? result[0].code : '';
			addressName = !!result[0].address_name ? result[0].address_name : '';
			
			addr.setAttribute("value",addressName);
			
		}  else {
			alert(status);
		}
	});

}

function searchRegionAddrFromCoords(position, callback) {
	position.coords.longitude = 126.983759;
	position.coords.latitude = 37.570546;
    // 좌표로 법정동 상세 주소 정보를 요청합니다
    geocoder.coord2RegionCode(position.coords.longitude, position.coords.latitude, callback);
}

</script>
</header>