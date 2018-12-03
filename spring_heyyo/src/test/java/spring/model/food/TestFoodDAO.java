package spring.model.food;

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

public class TestFoodDAO {

	private static BeanFactory beans;
	private FoodDAO foodDAO;
	
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
		foodDAO = (FoodDAO) beans.getBean("foodDAO");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testCreate() {
		fail("Not Testing");
		
		boolean flag = false;
		FoodDTO foodDTO = new FoodDTO();
		foodDTO.setFood_code("F001");
		foodDTO.setF_name("치킨1");
		foodDTO.setF_image("food1.jpg");
		foodDTO.setF_price(15000);
		foodDTO.setF_content("치닠");
		foodDTO.setF_menucode("M01");
		foodDTO.setR_code("R001");
		
		try {
			flag = foodDAO.create(foodDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testRead() {
		//fail("Not Testing");
		
		String food_code = "F002";
		FoodDTO foodDTO = null;
		
		try {
			foodDTO = (FoodDTO) foodDAO.read(food_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertNotNull(foodDTO);
	}

	@Test
	public void testUpdate() {
		fail("Not Testing");
		
		boolean flag = false;
		String food_code = "F001";
		FoodDTO foodDTO = null;
		try {
			foodDTO = (FoodDTO) foodDAO.read(food_code);
			
			foodDTO.setF_content("치닠 reformed");
			foodDTO.setF_image("food2.jpg");
			
			flag = foodDAO.update(foodDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testDelete() {
		fail("Not Testing");
		
		boolean flag = false;
		String food_code = "F001";
		
		try {
			flag = foodDAO.delete(food_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}
	
	@Test
	public void testList() {
		fail("Not Testing");
		
		List<FoodDTO> list = null;
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("r_code", "R001");
		
		try {
			list = foodDAO.list(map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertNotNull(list);
	}
}
