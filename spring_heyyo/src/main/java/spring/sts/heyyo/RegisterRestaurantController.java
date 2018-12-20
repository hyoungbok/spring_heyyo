package spring.sts.heyyo;

import javax.inject.Inject;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

	@Inject
	private RegisterRestaurantService registRestaurantService;
	
	/**
	 * Request page for Registration restaurant
	 * 
	 * @return registartion page
	 * @author soldesk
	 *
	 */
	@RequestMapping(path = "/restaurant/registration", method = RequestMethod.GET)
	public String registration() {
		
		return "restaurant/regist";
	}
	
	/**
	 * Request Registration restaurant information and result page
	 * 
	 * @param 
	 * @return
	 * @author soldesk
	 *
	 */
	@RequestMapping(path = "/restaurant/registration", method = RequestMethod.POST)
	public String registration(@ModelAttribute("restaurantDTO") RestaurantDTO restaurantDTO, Model model) {
		
		boolean registResult = false;
		
		registResult = registRestaurantService.regist(restaurantDTO);
		
		model.addAttribute("result", registResult);
		
		return "restaurant/view";
	}
	
	/**
	 * Request Modifying page
	 * 
	 * @author soldesk
	 *
	 */
	@RequestMapping(path = "/restaurant/modified", method = RequestMethod.GET)
	public String modified(@RequestParam(name = "code") String rCode, Model model) {
		
		return "restaurant/modified";
	}
	
	/**
	 * Request Modifying restaurant information and result page
	 * 
	 * @author soldesk
	 *
	 */
	@RequestMapping(path = "/restaurant/modified", method = RequestMethod.POST)
	public String modified(@ModelAttribute("restaurantDTO") RestaurantDTO restaurantDTO, Model model) {
		
		boolean modifiedResult = false;
		
		modifiedResult = registRestaurantService.modified(restaurantDTO);
		
		model.addAttribute("result", modifiedResult);
		
		return "restaurant/view";
	}
	
	/**
	 * Request Unregister page
	 * 
	 * @param rCode is restaurant code
	 * @return unregister page
	 * @author soldesk
	 *
	 */
	@RequestMapping(path = "/restaurant/unregister", method = RequestMethod.POST)
	public String unregist(@RequestParam(name = "code") String rCode, Model model) {
		
		boolean unregistResult = false;
		
		unregistResult = registRestaurantService.unregist(rCode);
		
		model.addAttribute("result", unregistResult);
		
		return "restaurant/unregist";
	}
	
}
