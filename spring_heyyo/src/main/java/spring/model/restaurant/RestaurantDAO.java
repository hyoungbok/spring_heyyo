package spring.model.restaurant;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDAO implements IRestaurantDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}

	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		
		RestaurantDTO restaurantDTO = (RestaurantDTO) dto;
		int result = mybatis.insert("restaurant.create", restaurantDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		List<RestaurantDTO> list = null;
		
		list = mybatis.selectList("restaurant.list", map);
		
		return list;
	}

	@Override
	public Object read(Object pk) throws Exception {
		RestaurantDTO restaurantDTO = null;
		String r_code = (String) pk;
		
		restaurantDTO = mybatis.selectOne("restaurant.read", r_code);
		
		return restaurantDTO;
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		RestaurantDTO restaurantDTO = (RestaurantDTO) dto;
		
		int result = mybatis.update("restaurant.update", restaurantDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		String r_code = (String) pk;
		
		int result = mybatis.delete("restaurant.delete", r_code);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Object readForUpdate(Object pk) throws Exception {
		RestaurantDTO restaurantDTO = null;
		String r_code = (String) pk;
		
		restaurantDTO = mybatis.selectOne("restaurant.readForUpdate", r_code);
		
		return restaurantDTO;
	}
}
