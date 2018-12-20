package spring.model.restaurantDetail;

public interface IRestaurantDetailService {

	public void regist(RestaurantDetailDTO restaurantDetailDTO);
	public void modified(RestaurantDetailDTO destaurantDetailDTO);
	public void unregist(String r_detailcode);
	
}
