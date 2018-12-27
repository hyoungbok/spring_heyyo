package spring.model.review;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.model.review.ReviewDTO;
@Repository
public class ReviewDAO implements IReviewDAO {

	@Autowired
	private SqlSessionTemplate mysql;
	
	public void setMybatis(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}
	
	public String getR_code(int order_num) throws Exception{
		
		String r_code = mysql.selectOne("review.getrcode", order_num);
		
		return r_code;
	}
	
	
	
	public String getBuisnessID(String r_code) throws Exception{
		String buisnessID = mysql.selectOne("review.getbid", r_code);
		
		return buisnessID;
		
	}
	
	public double avgstar(String r_code) throws Exception{
		double avgstar = mysql.selectOne("review.avgstar", r_code);
		
		return avgstar;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("review.create",(ReviewDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectList("review.list", map);
	}

	@Override
	public Object read(Object pk) throws Exception {
		ReviewDTO dto = mysql.selectOne("review.read", (Integer)pk);
		
		return dto;
	}

	@Override
	public boolean update(Object dto) throws Exception {
		
		boolean flag = false;
		int cnt = mysql.update("review.update", (ReviewDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("review.delete", (Integer)pk);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectOne("review.total", map);
	}
	
	

}
