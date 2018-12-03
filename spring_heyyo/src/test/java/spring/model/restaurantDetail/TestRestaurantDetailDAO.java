package spring.model.restaurantDetail;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class TestRestaurantDetailDAO {

	private static BeanFactory beans;
	private RestaurantDetailDAO restaurantDetailDAO;
	
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
		restaurantDetailDAO = (RestaurantDetailDAO) beans.getBean("restaurantDetailDAO");
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testCreate() {
		fail("Not Testing");
		
		boolean flag = false;
		RestaurantDetailDTO restaurantDetailDTO = new RestaurantDetailDTO();
		restaurantDetailDTO.setR_detailcode("D001");
		restaurantDetailDTO.setR_content("원산지");
		restaurantDetailDTO.setR_image("detail.jpg");
		restaurantDetailDTO.setR_code("R001");
		
		try {
			flag = restaurantDetailDAO.create(restaurantDetailDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testRead() {
		//fail("Not Testing");
		
		String r_code = "R001";
		RestaurantDetailDTO restaurantDetailDTO = null;
		
		try {
			restaurantDetailDTO = (RestaurantDetailDTO) restaurantDetailDAO.read(r_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertNotNull(restaurantDetailDTO);
	}

	@Test
	public void testUpdate() {
		fail("Not Testing");
		
		boolean flag = false;
		String r_code = "R001";
		RestaurantDetailDTO restaurantDetailDTO = null;
		try {
			restaurantDetailDTO = (RestaurantDetailDTO) restaurantDetailDAO.read(r_code);
			
			restaurantDetailDTO.setR_content("원산지 reformed");
			restaurantDetailDTO.setR_image("detail2.jpg");
			
			flag = restaurantDetailDAO.update(restaurantDetailDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

	@Test
	public void testDelete() {
		fail("Not Testing");
		
		boolean flag = false;
		String r_code = "R001";
		
		try {
			flag = restaurantDetailDAO.delete(r_code);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}

}
