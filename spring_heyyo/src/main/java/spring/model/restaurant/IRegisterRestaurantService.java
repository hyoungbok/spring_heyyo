package spring.model.restaurant;

public interface IRegisterRestaurantService {

	public void regist(RestaurantDTO restaurantDTO);
	public void modified(RestaurantDTO restaurantDTO);
	public void unregist(String restaurantCode);
	
}
