package spring.sts.heyyo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.model.restaurant.RegisterRestaurantService;
import spring.model.restaurant.RestaurantDTO;
import spring.model.restaurantDetail.RestaurantDetailDTO;

/**
 * Handle Requests for the application to registration, unregister and modified restaurant data
 * 
 * @author soldesk
 *
 */
@Controller
public class RegisterRestaurantController {

	@Autowired
	private RegisterRestaurantService registRestaurantService;
	
	@RequestMapping(path = "/restaurant/registration", method = RequestMethod.GET)
	public String registration(Model model) {
		
		return "restaurant/registration";
	}
	
	@RequestMapping(path = "/restaurant/registration", method = RequestMethod.POST)
	public String registration(@RequestParam(name = "name") String rName, Model model) {
		
		RestaurantDTO restaurantDTO = new RestaurantDTO();
		RestaurantDetailDTO restaurantDetailDTO = new RestaurantDetailDTO();
		
		
		return "restaurant";
	}
	
	@RequestMapping(path = "/restaurant/modified", method = RequestMethod.GET)
	public String modified(@RequestParam(name = "code") String rCode, Model model) {
		
		return "restaurant/modified";
	}
	
	@RequestMapping(path = "/restaurant/modified", method = RequestMethod.POST)
	public String modified(@RequestParam(name = "code") String rCode, 
			@RequestParam(name = "name") String name, Model model) {
		
		return "restaurant";
	}
	@RequestMapping(path = "/restaurant/unregistration", method = RequestMethod.GET)
	public String unregister(@RequestParam(name = "code") String rCode, Model model) {
		
		return "restaurant/unregistration";
	}
}
