package spring.model.report;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ReportDAO implements IReportDAO {

	@Autowired
	private SqlSessionTemplate mysql;
	
	public void setMybatis(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}
	
	@Override
	public boolean create(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("report.create", (ReportDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public List list(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectList("report.list");
	}

	@Override
	public Object read(Object pk) throws Exception {
		return mysql.selectOne("report.read", (Integer)pk);
	}

	@Override
	public boolean update(Object dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.update("report.update", (ReportDTO)dto);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public boolean delete(Object pk) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("report.delete", (Integer)pk);
		if(cnt>0) {
			flag = true;
		}
		return flag;
	}

	@Override
	public int total(Map map) throws Exception {
		// TODO Auto-generated method stub
		return mysql.selectOne("report.total");
	}

}
