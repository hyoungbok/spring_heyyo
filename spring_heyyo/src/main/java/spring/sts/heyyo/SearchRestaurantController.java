package spring.sts.heyyo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.restaurant.RestaurantDTO;
import spring.model.restaurant.SearchRestaurantService;

/**
 * Handle Requests for the application Main page
 * 
 * @author soldesk
 *
 */
@Controller
public class SearchRestaurantController {

	@Autowired
	private SearchRestaurantService searchRestaurantService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main(Model model) {
		
		return "search/restaurant_search";
	}
	
	@GetMapping("/location/{bjdCode}/{categoryCode}")
	public String getList(@PathVariable(name = "bjdCode") String bjdCode,
			@PathVariable(name = "categoryCode") String categoryCode, Model model) {
		
		List<RestaurantDTO> list = searchRestaurantService.getRestaurantList(bjdCode, categoryCode);
		
		model.addAttribute("restaurants", list);
		return "search/restaurant_list";
	}
	
	@GetMapping("/{restaurantCode}")
	public String readOne(@PathVariable(name = "restaurantCode") String restaurantCode, Model model) {
		
		RestaurantDTO restaurantDTO = null;
		
		searchRestaurantService.readOneRestaurant(restaurantCode);
		
		return "search/restaurant_view";
	}
}
