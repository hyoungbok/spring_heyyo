package review_reply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.MyAppSqlConfig;

public class ReviewReplyDAO {
	private static SqlSessionFactory sqlMapper;
	private static SqlSession session;
		static{
			
			sqlMapper = MyAppSqlConfig.getSqlMapInstance();
			session = sqlMapper.openSession(true);
		}
		public boolean create(ReviewReplyDTO dto) {
			boolean flag = false;
			int cnt = session.insert("review_reply.create", dto);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public ReviewReplyDTO read(int r_replynum) {
			return session.selectOne("review_reply.read", r_replynum);
		}
		
		public boolean update(ReviewReplyDTO dto) {
			boolean flag = false;
			int cnt = session.update("review_reply.update", dto);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public boolean delete(int r_replynum) {
			boolean flag = false;
			int cnt = session.delete("review_reply.delete", r_replynum);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public List list() {
			return session.selectList("review_reply.list");
		}
		
		public int total() {
			return session.selectOne("review_reply.total");
		}
		
		
}
