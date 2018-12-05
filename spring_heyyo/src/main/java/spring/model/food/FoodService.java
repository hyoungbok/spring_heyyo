package spring.model.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FoodService implements IFoodService {

	@Autowired
	private FoodDAO foodDAO;
	
	@Override
	public void registFood(FoodDTO foodDTO) {

	}

	@Override
	public void modifiedFood(FoodDTO foodDTO) {

	}

	@Override
	public FoodDTO selectOneFood(String foodCode) {
		return null;
	}

	@Override
	public void unregistFood(String foodCode) {

	}

	@Override
	public List<FoodDTO> selectFoods(String restaurantCode) {
		return null;
	}

}
