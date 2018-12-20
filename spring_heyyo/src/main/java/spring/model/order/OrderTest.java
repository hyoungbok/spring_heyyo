package spring.model.order;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class OrderTest {

	public static void main(String[] args) throws Exception {
		OrdersDAO dao = new OrdersDAO();
//		 create(dao);
//		 update(dao, null);
//		read(dao);
		// delete(dao);
		// list(dao);
//		read2(dao);
		sum(dao);
//		 read3(dao);
	}

	private static void read3(OrdersDAO dao) throws Exception {
		
		List<OrdersDTO> list = dao.read3("1");
		
		Iterator<OrdersDTO> iter = read3.iterator();

		while (iter.hasNext()) {
			OrdersDTO dto = iter.next();
			p(dto);
			p("----------------------");
		}

	}
		

	private static void sum(OrdersDAO dao) throws Exception {

		String r_code = "R001";

		System.out.println(dao.sum(r_code));

	}

	private static void read2(OrdersDAO dao) throws Exception {
		OrdersDTO dto = dao.read2("admin2");
		p(dto);

	}

	private static void list(OrdersDAO dao) throws Exception {

		List<OrdersDTO> list = dao.list("admin2");

		Iterator<OrdersDTO> iter = list.iterator();

		while (iter.hasNext()) {
			OrdersDTO dto = iter.next();
			p(dto);
			p("----------------------");
		}

	}

	private static void delete(OrdersDAO dao) throws Exception {

		if (dao.delete(1)) {
			p("����");
		} else {
			p("����");
		}

	}

	private static void read(OrdersDAO dao) throws Exception {
		OrdersDTO dto = dao.read(2);
		p(dto);

	}

	private static void update(OrdersDAO dao, OrdersDTO dto) throws Exception {

		String m_id = "admin2";
		Map map = new HashMap();
		map.put("o_mileage", dto.getO_mileage());
		map.put("m_id", dto.getM_id());

		if (dao.update(map)) {
			p("����");
		} else {
			p("����");
		}
	}

	private static void create(OrdersDAO dao) throws Exception {
		OrdersDTO dto = new OrdersDTO();
		dto.setOrder_num(20);
		dto.setO_pay(16400);
		dto.setO_req("¥���߰���");
		dto.setO_address("��⵵");
		dto.setR_code("R001");
		dto.setM_id("admin2");
		dto.setO_mileage(1000);

		if (dao.create(dto)) {
			p("����");
		} else {
			p("����");
		}
	}

	private static void p(String string) {
		System.out.println(string);

	}

	private static void p(OrdersDTO dto) {
		p("�ֹ���ȣ:" + dto.getOrder_num());
		p("�����ݾ�:" + dto.getO_pay());
		p("��û����:" + dto.getO_req());
		p("�ּ�:" + dto.getO_address());
		p("�Ĵ��ڵ�:" + dto.getR_code());
		p("ȸ�����̵�:" + dto.getM_id());
		p("���ϸ���:" + dto.getO_mileage());
		p("���帶�ϸ���:" + dto.getM_mileage());
		p("���:" + dto.getM_grade());
		p("�����̸�:" + dto.getF_name());
		p("���İ���:" + dto.getF_price());
		p("����:" + dto.getO_amount());
		p("�����ڵ�:" + dto.getFood_code());
		p("�����ڵ�:" + dto.getFoodcode());

	}

}
