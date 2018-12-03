package spring.model.ask;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AskDAO implements IAskDAO{

	@Autowired
	private SqlSessionTemplate mysql;

	public void setMysql(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}	
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("ask.create", dto);
		if(cnt>0) flag = true;
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		
		return mysql.selectList("ask.list", map);
	}

	@Override
	public AskDTO read(Object ask_code) throws Exception {
		
		return mysql.selectOne("ask.read", ask_code);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.update("ask.update", dto);
		if(cnt>0) flag = true;
		return flag;
	}

	@Override
	public boolean delete(Object ask_code) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("ask.delete", ask_code);
		if(cnt > 0) flag = true;
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {

		return mysql.selectOne("ask.total", map);
	}

}
