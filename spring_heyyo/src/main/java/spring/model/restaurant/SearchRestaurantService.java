package spring.model.restaurant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.food.FoodDAO;
import spring.model.food.FoodDTO;
import spring.model.restaurantDetail.RestaurantDetailDAO;

/**
 * @author soldesk
 *
 */
@Service
public class SearchRestaurantService implements ISearchRestaurantService {

	@Autowired
	private RestaurantDAO restaurantDAO;
	
	@Autowired
	private RestaurantDetailDAO restaurantDetailDAO;
	
	@Autowired
	private FoodDAO foodDAO;
	
	@Override
	public List<RestaurantDTO> getRestaurantList(String BubjungdongCode, String categoryCode) {
		
		List<RestaurantDTO> list = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_bcode", BubjungdongCode);
		map.put("r_categorycode", categoryCode);
		
		try {
			list = restaurantDAO.list(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public Map<String, Object> readOneRestaurant(String restaurantCode) {
		
		RestaurantDTO restaurantDTO = null;
		List<FoodDTO> foodList = null;
		Map<String, Object> restaurantInfoMap = new HashMap<String, Object>();
		
		try {
			restaurantDTO = (RestaurantDTO) restaurantDAO.read(restaurantCode);
			foodList = foodDAO.list(restaurantCode);
			
			restaurantInfoMap.put("restaurantDTO", restaurantDTO);
			restaurantInfoMap.put("foodList", foodList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return restaurantInfoMap;
	}
}
