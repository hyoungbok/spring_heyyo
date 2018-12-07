package report;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.MyAppSqlConfig;

public class ReportDAO {
	private static SqlSessionFactory sqlMapper;
	private static SqlSession session;
		static{
			
			sqlMapper = MyAppSqlConfig.getSqlMapInstance();
			session = sqlMapper.openSession(true);
		}
		public boolean create(ReportDTO dto) {
			boolean flag = false;
			int cnt = session.insert("report.create", dto);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public ReportDTO read(int reportnum) {
			return session.selectOne("report.read", reportnum);
		}
		
		public boolean update(ReportDTO dto) {
			boolean flag = false;
			int cnt = session.update("report.update", dto);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public boolean delete(int reportnum) {
			boolean flag = false;
			int cnt = session.delete("report.delete", reportnum);
			if(cnt>0) {
				flag = true;
			}
			return flag;
		}
		
		public List list() {
			return session.selectList("report.list");
		}
		
		public int total() {
			return session.selectOne("report.total");
		}
		
		
}
