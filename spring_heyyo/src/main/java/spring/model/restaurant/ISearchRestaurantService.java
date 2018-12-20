package spring.model.restaurant;

import java.util.List;
import java.util.Map;

public interface ISearchRestaurantService {

	public List<RestaurantDTO> getRestaurantList(String BubjungdongCode, String categoryCode);
	public Map<String, Object> getRestaurant(String restaurantCode);
}
