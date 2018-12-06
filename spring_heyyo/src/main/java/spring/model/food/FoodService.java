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

		try {
			foodDAO.create(foodDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public void modifiedFood(FoodDTO foodDTO) {

		try {
			foodDAO.update(foodDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public FoodDTO selectOneFood(String foodCode) {
		
		FoodDTO foodDTO = null;
		try {
			foodDTO = (FoodDTO) foodDAO.read(foodCode);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return foodDTO;
	}

	@Override
	public void unregistFood(String foodCode) {

		try {
			foodDAO.delete(foodCode);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	@Override
	public List<FoodDTO> selectFoods(String restaurantCode) {
		
		List<FoodDTO> list = null;
		try {
			list = foodDAO.list(restaurantCode);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return null;
	}

}
