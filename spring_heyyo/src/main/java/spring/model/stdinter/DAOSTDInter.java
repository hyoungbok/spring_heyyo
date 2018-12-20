package spring.model.stdinter;
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import spring.model.order.OrdersDTO;
 
public interface DAOSTDInter {
	boolean create(OrdersDTO dto)throws Exception;
	OrdersDTO read(int order_num)throws Exception;
	boolean update2(Map map)throws Exception;
	boolean delete(int order_num)throws Exception;
	int sum(String r_code) throws Exception;
	List<OrdersDTO> list(String m_id) throws Exception;  
	OrdersDTO read2(String m_id) throws Exception;
	boolean update(Map map) throws Exception;
	List<HashMap> read3(String food_code) throws Exception;
	 
 
}