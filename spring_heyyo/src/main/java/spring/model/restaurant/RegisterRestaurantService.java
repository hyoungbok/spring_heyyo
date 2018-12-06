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
	public void regist(RestaurantDTO restaurantDTO) {
		
		try {
			restaurantDAO.create(restaurantDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void modified(RestaurantDTO restaurantDTO) {
		
		try {
			restaurantDAO.update(restaurantDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void unregist(String restaurantCode) {
		
		try {
			foodDAO.deleteAll(restaurantCode);
			restaurantDetailDAO.deleteAll(restaurantCode);
			restaurantDAO.delete(restaurantCode);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
}
