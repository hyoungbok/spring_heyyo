package spring.model.restaurant;

public interface IRegisterRestaurantService {

	public void registRestaurant(RestaurantDTO restaurantDTO);
	public void modifiedRestaurant(RestaurantDTO restaurantDTO);
	public void unregistRestaurant(String restaurantCode);
	
}
