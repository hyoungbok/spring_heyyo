package spring.model.order;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrdersService {
	

	@Autowired
	private OrdersDAO ordersdao;
	
	
	public void update(OrdersDTO dto) throws Exception{
		
		boolean flag = ordersdao.create(dto);
		if(flag) {
			Map map = new HashMap();
			map.put("m_id", dto.getM_id());
			map.put("o_mileage", dto.getO_mileage());
			ordersdao.update(map);
		}
	}
	
	public void update2(int order_num,String m_id) throws Exception{
		
		
		boolean pflag = ordersdao.delete(order_num);
		if(pflag) {
			Map map = new HashMap();
			map.put("m_id", m_id);
			map.put("order_num", order_num);
			ordersdao.update2(map);
				
		}
	}
	 
}
