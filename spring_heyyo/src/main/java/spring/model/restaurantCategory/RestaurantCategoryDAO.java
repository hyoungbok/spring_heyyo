package spring.model.restaurantCategory;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantCategoryDAO implements IRestaurantCategory{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		
		boolean flag = false;
		RestaurantCategoryDTO restaurantCategoryDTO = (RestaurantCategoryDTO) dto;
		
		int result = mybatis.insert("restaurantCategory.create", restaurantCategoryDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {

		return null;
	}

	@Override
	public Object read(Object pk) throws Exception {
		
		return null;
	}

	@Override
	public boolean update(Object dto) throws Exception {

		boolean flag = false;
		RestaurantCategoryDTO restaurantCategoryDTO = (RestaurantCategoryDTO) dto;
		
		int result = mybatis.update("restaurantCategory.update", restaurantCategoryDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		
		boolean flag = false;
		String r_categorycode = (String) pk;
		
		int result = mybatis.delete("restaurantCategory.delete", r_categorycode);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {

		return 0;
	}

}
