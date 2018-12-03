package spring.model.restaurant;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class TestRestaurantDAO {

	private static BeanFactory beans;
	private RestaurantDAO restaurantDAO;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		Resource resource = new ClassPathResource("/daoTest.xml");
		beans = new XmlBeanFactory(resource);
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
		restaurantDAO = (RestaurantDAO) beans.getBean("restaurantDAO");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testCreate() {
		fail("Not Testing");
		
		boolean flag = false;
		RestaurantDTO restaurantDTO = new RestaurantDTO();
		restaurantDTO.setR_code("R003");
		restaurantDTO.setR_name("식당3");
		restaurantDTO.setR_address("서울시");
		restaurantDTO.setR_logo("logo3.jpg");
		restaurantDTO.setR_phone("02-0000-0000");
		restaurantDTO.setR_bcode("1111010100");
		restaurantDTO.setR_mintime("10");
		restaurantDTO.setR_maxtime("30");
		restaurantDTO.setR_pay("현금");
		restaurantDTO.setR_min(10000);
		restaurantDTO.setBusinessID("soldesk");
		restaurantDTO.setR_categorycode("C01");
		
		try {
			flag = restaurantDAO.create(restaurantDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testList() {
		fail("Not Testing");
		
		List<RestaurantDTO> list = null;
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_bcode", "1111010100");
		map.put("r_categorycode", "C01");
		
		try {
			list = restaurantDAO.list(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertNotNull(list);
	}

	@Test
	public void testRead() {
		fail("Not Testing");
		
		RestaurantDTO restaurantDTO = null;
		String r_code = "R001";
		
		try {
			restaurantDTO = (RestaurantDTO) restaurantDAO.read(r_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertNotNull(restaurantDTO);
	}

	@Test
	public void testUpdate() {
		fail("Not Testing");
		
		boolean flag = false;
		String r_code = "R001";
		RestaurantDTO restaurantDTO = null;
		try {
			restaurantDTO = (RestaurantDTO) restaurantDAO.readForUpdate(r_code);
		
			restaurantDTO.setR_logo("logo2.jpg");
		
			flag = restaurantDAO.update(restaurantDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testDelete() {
		fail("Not Testing");
		
		boolean flag = false;
		String r_code = "R002";
		
		try {
			flag = restaurantDAO.delete(r_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testTotal() {
		fail("Not yet implemented");
	}

}
