package spring.model.review_reply;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class ReviewReplyDAO implements IReviewReplyDAO{
	
	@Autowired
	private SqlSessionTemplate mysql;

	public void setMybatis(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("review_reply.create", (ReviewReplyDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectList("review_reply.list");
	}

	@Override
	public Object read(Object pk) throws Exception {
		return mysql.selectOne("review_reply.read", (Integer)pk);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.update("review_reply.update", (ReviewReplyDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("review_reply.delete", (Integer)pk);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectOne("review_reply.total");
	}

}
