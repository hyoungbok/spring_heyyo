package spring.sts.heyyo;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.food.FoodDTO;
import spring.model.restaurant.RestaurantDTO;
import spring.model.restaurant.SearchRestaurantService;
import spring.model.restaurantDetail.RestaurantDetailDTO;

/**
 * Handle Requests for the application Main page and Search/view restaurant page
 * 
 * @author soldesk
 *
 */
@Controller
public class SearchRestaurantController {

	@Inject
	private SearchRestaurantService searchRestaurantService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mainPage(Model model) {
		
		return "search/restaurant_search";
	}
	
	/**
	 * Get Restaurant List From Database And Return view page
	 * 
	 * @author soldesk
	 * @param bjdCode is BubJungDong Code 10 Numbers
	 * @param categoryCode is restaurant category code
	 * @return restaurant list view page
	 *
	 */
	@GetMapping("/{bjdCode}/{catCode}")
	public String getList(@PathVariable(name = "bjdCode") String bjdCode,
			@PathVariable(name = "catCode") String catCode, Model model) {
		
		List<RestaurantDTO> list = searchRestaurantService.getRestaurantList(bjdCode, catCode);
		
		model.addAttribute("restaurants", list);
		return "search/restaurant_list";
	}

	/**
	 * Get Restaurant Info And Food From Database And Return view page
	 * 
	 * @author soldesk
	 * @param restaurantCode is restaurant code 
	 * @return restaurant and foods view page
	 *
	 */
	@GetMapping("/{restaurantCode}")
	public String readOne(@PathVariable(name = "restaurantCode") String restaurantCode, Model model) {
		
		RestaurantDTO restaurantDTO = null;
		RestaurantDetailDTO restaurantDetailDTO = null;
		List<FoodDTO> foodList = null;
		Map restaurantInfoMap = null;
		
		restaurantInfoMap = searchRestaurantService.getRestaurant(restaurantCode);
		
		restaurantDTO = (RestaurantDTO) restaurantInfoMap.get("restaurantDTO");
		restaurantDetailDTO = (RestaurantDetailDTO) restaurantInfoMap.get("restaurantDetailDTO");
		foodList = (List<FoodDTO>) restaurantInfoMap.get("foodList");
		
		model.addAttribute("restaurant",restaurantDTO);
		model.addAttribute("moreInfo",restaurantDetailDTO);
		model.addAttribute("foodList", foodList);
		
		return "search/restaurant_view";
	}
}
