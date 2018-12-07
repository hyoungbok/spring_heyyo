package review;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.MyAppSqlConfig;

public class ReviewDAO {


private static SqlSessionFactory sqlMapper;

private static SqlSession session;
	static{
		
		sqlMapper = MyAppSqlConfig.getSqlMapInstance();
		session = sqlMapper.openSession(true);
	}
	
	public boolean create(ReviewDTO dto) {
		boolean flag = false;
		int cnt = session.insert("review.create",dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
		
	}
	public ReviewDTO read(int reviewnum) {
		
		ReviewDTO dto = session.selectOne("review.read", reviewnum);
		
		return dto;
	}
	public boolean update(ReviewDTO dto) {
		boolean flag = false;
		int cnt = session.update("review.update", dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}
	public boolean delete(int reviewnum) {
		boolean flag = false;
		int cnt = session.delete("review.delete", reviewnum);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}
	
	public List list(Map map) {
		return session.selectList("review.list", map);
	}
	
	public int total(Map map) {
		return session.selectOne("review.total", map);
	}
	
	
}
