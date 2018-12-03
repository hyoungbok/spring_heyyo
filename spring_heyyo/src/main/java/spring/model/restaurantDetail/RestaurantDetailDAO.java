package spring.model.restaurantDetail;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RestaurantDetailDAO implements IRestaurantDetailDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		RestaurantDetailDTO restaurantDetailDTO = (RestaurantDetailDTO) dto;
		
		int result = mybatis.insert("restaurantDetail.create", restaurantDetailDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object read(Object pk) throws Exception {
		RestaurantDetailDTO restaurantDetailDTO = null;
		String r_code = (String) pk;
		
		restaurantDetailDTO = mybatis.selectOne("restaurantDetail.read", r_code);
		
		return restaurantDetailDTO;
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		RestaurantDetailDTO restaurantDetailDTO = (RestaurantDetailDTO) dto;
		
		int result = mybatis.update("restaurantDetail.create", restaurantDetailDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		String r_code = (String) pk;
		
		int result = mybatis.delete("restaurantDetail.create", r_code);
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

}
