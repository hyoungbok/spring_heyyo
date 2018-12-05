package spring.model.ask;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.HashMap;
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

public class AskDAOTest {

	
	private static AskDAO dao;
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
		dao = (AskDAO)beans.getBean("ask");
	}

	@After
	public void tearDown() throws Exception {
	}


	@Test
	@Ignore
	public void testCreate() throws Exception {
		AskDTO dto = new AskDTO();
		dto.setAsk_code("A010");
		dto.setAsk_name("A010코드입니다.");
		assertTrue(dao.create(dto));
	}
	
/*	@Test
	@Ignore
	public void testList() throws Exception {
		
	}*/

	@Test

	public void testRead() throws Exception {
		String ask_code = "A002";
		AskDTO dto = dao.read(ask_code);
		assertNotNull(dto);
	}

	@Test
	@Ignore
	public void testUpdate() throws Exception {
		String ask_code = "A010";
		AskDTO dto = dao.read(ask_code);
		dto.setAsk_name("A010 내용변경");
		assertTrue(dao.update(dto));
	}

	@Test
	@Ignore
	public void testDelete() throws Exception {
		String ask_code = "A010";
		assertTrue(dao.delete(ask_code));
	}

/*	@Test
	@Ignore
	public void testTotal() throws Exception {
		Map map = new HashMap();
		int total = dao.total(map);
		equals(total);
	}*/

}
