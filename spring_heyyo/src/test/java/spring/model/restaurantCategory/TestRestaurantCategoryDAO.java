package spring.model.restaurantCategory;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class TestRestaurantCategoryDAO {

	private static BeanFactory beans;
	private RestaurantCategoryDAO restaurantCategoryDAO;
	
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
		restaurantCategoryDAO = (RestaurantCategoryDAO) beans.getBean("restaurantCategoryDAO");
	}
	
	@After
	public void tearDown() throws Exception {
	}
	
/*	@Test
	public void testCreate() {
		boolean flag = false;
		RestaurantCategoryDTO restaurantCategoryDTO = new RestaurantCategoryDTO();
		
		restaurantCategoryDTO.setR_categorycode("C07");
		restaurantCategoryDTO.setR_categoryname("분식");
		
		try {
			flag = restaurantCategoryDAO.create(restaurantCategoryDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}*/
	
/*	@Test
	public void testUpdate() {
		boolean flag = false;
		RestaurantCategoryDTO restaurantCategoryDTO = new RestaurantCategoryDTO();
		
		restaurantCategoryDTO.setR_categorycode("C06");
		restaurantCategoryDTO.setR_categoryname("일식");
		
		try {
			flag = restaurantCategoryDAO.update(restaurantCategoryDTO);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}*/
	
	@Test
	public void testDelete() {
		boolean flag = false;
		String r_categorycode = "CO6";
		
		try {
			flag = restaurantCategoryDAO.delete(r_categorycode);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		assertEquals(flag, true);
	}
}
