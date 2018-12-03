package spring.model.buisness_required;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Buisness_requiredDAO implements IBuisness_requiredDAO{

	@Autowired
	private SqlSessionTemplate mysql;

	public void setMysql(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}	
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("buisness_required.create",dto);
		if(cnt>0) flag = true;
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {

		return mysql.selectList("buisness_required.list", map);
	}

	@Override
	public Object read(Object req_num) throws Exception {

		return mysql.selectOne("buisness_required.read", req_num);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.update("buisness_required.update", dto);
		if(cnt > 0) flag = true;
		return flag;
	}

	@Override
	public boolean delete(Object req_num) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("buisness_required.delete", req_num);
		if(cnt > 0) flag = true;
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		
		return mysql.selectOne("buisness_required.total", map);
	}

}
