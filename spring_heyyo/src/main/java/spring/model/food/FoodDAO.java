package spring.model.food;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.model.food.FoodDTO;

@Repository
public class FoodDAO implements IFoodDAO{

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void setMybatis(SqlSessionTemplate mybatis) {
		this.mybatis = mybatis;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		FoodDTO foodDTO = (FoodDTO) dto;
		
		int result = mybatis.insert("food.create", foodDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		List<FoodDTO> list = null;
		
		list = mybatis.selectList("food.list", map);
		
		return list;
	}

	@Override
	public Object read(Object pk) throws Exception {
		FoodDTO foodDTO = null;
		String r_code = (String) pk;
		
		foodDTO = mybatis.selectOne("food.read", r_code);
		
		return foodDTO;
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		FoodDTO foodDTO = (FoodDTO) dto;
		
		int result = mybatis.update("food.create", foodDTO);
		if(result > 0) {
			flag = true;
		}
		
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		String r_code = (String) pk;
		
		int result = mybatis.delete("food.create", r_code);
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
