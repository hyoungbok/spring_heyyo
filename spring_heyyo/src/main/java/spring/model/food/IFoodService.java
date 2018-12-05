package spring.model.food;

import java.util.List;

public interface IFoodService {

	public void registFood(FoodDTO foodDTO);
	public void modifiedFood(FoodDTO foodDTO);
	public FoodDTO selectOneFood(String foodCode);
	public void unregistFood(String foodCode);
	public List<FoodDTO> selectFoods(String restaurantCode);
	
}
