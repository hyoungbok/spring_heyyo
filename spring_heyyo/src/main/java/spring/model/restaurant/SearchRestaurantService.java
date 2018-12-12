package spring.model.restaurant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.food.FoodDAO;
import spring.model.food.FoodDTO;
import spring.model.restaurantDetail.RestaurantDetailDAO;
import spring.model.restaurantDetail.RestaurantDetailDTO;
import spring.sts.heyyo.HomeController;

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
	public Map<String, Object> getRestaurant(String restaurantCode) {
		
		RestaurantDTO restaurantDTO = null;
		RestaurantDetailDTO restaurantDetailDTO = null;
		List<FoodDTO> foodList = null;
		Map<String, Object> restaurantInfoMap = new HashMap<String, Object>();
		
		try {
			restaurantDTO = (RestaurantDTO) restaurantDAO.read(restaurantCode);
			restaurantDetailDTO = (RestaurantDetailDTO) restaurantDetailDAO.read(restaurantCode);
			foodList = foodDAO.list(restaurantCode);
			
			restaurantInfoMap.put("restaurantDTO", restaurantDTO);
			restaurantInfoMap.put("restaurantDetailDTO", restaurantDetailDTO);
			restaurantInfoMap.put("foodList", foodList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return restaurantInfoMap;
	}
}
