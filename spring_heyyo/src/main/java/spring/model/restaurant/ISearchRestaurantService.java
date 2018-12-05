package spring.model.restaurant;

import java.util.List;

public interface ISearchRestaurantService {

	public List<RestaurantDTO> getRestaurantList(String BubjungdongCode, String categoryCode);
	public RestaurantDTO readOneRestaurant(String restaurantCode);
}
