package spring.model.restaurant;

public interface IRegisterRestaurantService {

	public boolean regist(RestaurantDTO restaurantDTO);
	public boolean modified(RestaurantDTO restaurantDTO);
	public boolean unregist(String restaurantCode);
	
}
