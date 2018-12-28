package spring.model.order;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDAO implements IOrder {

	@Autowired
	private SqlSessionTemplate mysql;
	
	public void setMysql(SqlSessionTemplate mysql) {
		this.mysql = mysql;
	}
	
	public boolean ocreate(OrdersDTO dto) {
		boolean flag = false;
		int cnt = mysql.insert("orders.ocreate, dto");
		if(cnt>0)flag = true;
		return flag;
	}

	public List read3(String food_code) throws Exception{
	return mysql.selectList("orders.read3", food_code);
	}
	

	public OrdersDTO read2(String m_id) throws Exception{
		return mysql.selectOne("orders.read2", m_id);
	} 
	 
	
	public boolean create(OrdersDTO dto) throws Exception {
		boolean flag = false;
		int cnt = mysql.insert("orders.create",dto);
		if(cnt>0)flag = true;
		return flag;
	}

	
	public List<OrdersDTO> list(Map map) throws Exception {
		return mysql.selectList("orders.list", map);
	}

	
	public OrdersDTO read(int order_num) throws Exception {
		return mysql.selectOne("orders.read", order_num);
	}

	
	public boolean update(Map map) throws Exception {
		boolean flag = false;
		int cnt = mysql.update("orders.update",map);
		if(cnt>0)flag = true;
		return false;
	}
	
	public boolean update2(Map map) throws Exception{
		boolean flag =false;
		int cnt = mysql.update("orders.update2", map);
		if(cnt>0)flag = true;
		return false;
	}

	
	public boolean delete(int order_num) throws Exception {
		boolean flag = false;
		int cnt = mysql.delete("orders.delete", order_num);
		if(cnt>0)flag = true;
		return  flag;
	}
	
	public int sum(String r_code) throws Exception { 
		return mysql.selectOne("orders.sum", r_code);
	}
	
	public List orderrec(String m_id) throws Exception{
		return mysql.selectList("orders.orderrec", m_id);
	}

	

}
