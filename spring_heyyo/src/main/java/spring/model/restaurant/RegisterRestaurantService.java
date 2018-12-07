package spring.model.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import spring.model.food.FoodDAO;
import spring.model.restaurantDetail.RestaurantDetailDAO;

/**
 * @author soldesk
 *
 */
@Service
public class RegisterRestaurantService implements IRegisterRestaurantService {

	@Autowired
	private RestaurantDAO restaurantDAO;
	
	@Autowired
	private RestaurantDetailDAO restaurantDetailDAO;
	
	@Autowired
	private FoodDAO foodDAO;
	
	@Override
	public boolean regist(RestaurantDTO restaurantDTO) {
		boolean registResult = false;
		
		try {
			registResult = restaurantDAO.create(restaurantDTO);
		} catch (Exception e) {
			
			
		}
		
		return registResult;
	}

	@Override
	public boolean modified(RestaurantDTO restaurantDTO) {
		boolean registResult = false;
		
		try {
			registResult = restaurantDAO.update(restaurantDTO);
		} catch (Exception e) {
			
			
		}
		
		return registResult;
	}

	@Override
	public boolean unregist(String restaurantCode) {
		boolean registResult = false;
		
		try {
			registResult = foodDAO.deleteAll(restaurantCode);
			registResult = restaurantDetailDAO.deleteAll(restaurantCode);
			registResult = restaurantDAO.delete(restaurantCode);
		} catch (Exception e) {
			
			
		}
		
		return registResult;
	}
}
