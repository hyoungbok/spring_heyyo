package spring.model.buisness_required;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class Buisness_requiredDAOTest {
	
	private static Buisness_requiredDAO dao;
	private static BeanFactory beans;
	

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Resource resource = new ClassPathResource("daoTest.xml");
		beans = new XmlBeanFactory(resource);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		dao = (Buisness_requiredDAO)beans.getBean("buisness_required");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test

	public void testCreate() throws Exception {
		Buisness_requiredDTO dto = new Buisness_requiredDTO();
		dto.setAsk_code("A001");
		dto.setBuisnessID("soldesk");
		dto.setR_code("R002");
		dto.setReq_content("ddd");
		dto.setReq_file("ffff");
		dto.setReq_title("tttt");
		assertTrue(dao.create(dto));
		
	}

	@Test
	@Ignore
	public void testList() throws Exception {
		
		Map map = new HashMap();
		map.put("buisnessID", "soldesk");
		map.put("result_code", "x");
		map.put("sno", 1);
		map.put("eno", 5);
		List<Buisness_requiredDTO> list = dao.list(map);
		Iterator<Buisness_requiredDTO> iter = list.iterator();
		assertEquals(list.size(), 2);
	}

	@Test
	
	public void testRead() throws Exception {
		int req_num = 1;
		Buisness_requiredDTO dto = (Buisness_requiredDTO) dao.read(req_num);
		assertNotNull(dto);
	}

	@Test
	@Ignore
	public void testUpdate() throws Exception {
		int req_num = 1;
		Buisness_requiredDTO dto = (Buisness_requiredDTO) dao.read(req_num);
		dto.setReq_content("cccc");
		dto.setReq_title("tttt");
		dto.setReq_file("fffff");
		dto.setResult_code("x");
		assertTrue(dao.update(dto));
		
	}

	@Test
	@Ignore
	public void testDelete() throws Exception {
		int req_num = 5;
		assertTrue(dao.delete(req_num));
	}

	@Test
	@Ignore
	public void testTotal() throws Exception {
		Map map = new HashMap();

		map.put("col", "");
		map.put("word", "");
		
		int total = dao.total(map);
		assertEquals(total, 4);
	}

}
