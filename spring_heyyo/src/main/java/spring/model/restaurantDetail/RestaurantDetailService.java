package spring.model.restaurantDetail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author soldesk
 *
 */
@Service
public class RestaurantDetailService implements IRestaurantDetailService {

	@Autowired
	private RestaurantDetailDAO restaurantDetailDAO;
	
	@Override
	public void regist(RestaurantDetailDTO restaurantDetailDTO) {

		try {
			restaurantDetailDAO.create(restaurantDetailDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void modified(RestaurantDetailDTO destaurantDetailDTO) {
		
		try {
			restaurantDetailDAO.update(destaurantDetailDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void unregist(String r_detailcode) {
		
		try {
			restaurantDetailDAO.delete(r_detailcode);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
