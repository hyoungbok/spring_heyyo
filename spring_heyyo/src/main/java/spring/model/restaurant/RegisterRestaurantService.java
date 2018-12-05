package spring.model.restaurant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	@Override
	public void registRestaurant(RestaurantDTO restaurantDTO) {
		
	}

	@Override
	public void modifiedRestaurant(RestaurantDTO restaurantDTO) {
		
	}

	@Override
	public void unregistRestaurant(String restaurantCode) {
		
	}
}
