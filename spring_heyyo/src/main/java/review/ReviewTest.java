package review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReviewTest {

	public static void main(String[] args) {
		
		ReviewDAO dao = new ReviewDAO();
		//create(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		//list(dao);
		total(dao);
		

	}

	private static void total(ReviewDAO dao) {
		Map map = new HashMap();
		map.put("col", "food_code");
		map.put("word", "F002");
		map.put("sno", 1);
		map.put("eno", 5);
		int total = dao.total(map);
		System.out.println(total);
		
	}

	private static void list(ReviewDAO dao) {
		Map map = new HashMap();
		map.put("col", "food_code");
		map.put("word", "F002");
		map.put("sno", 1);
		map.put("eno", 5);
		List list = dao.list(map);
		for(int i = 0; i < list.size(); i++ ) {
			ReviewDTO dto = (ReviewDTO) list.get(i);
			p(dto);
			System.out.println("mmmmmmmmmmmmmmmmmmmm");
		}
		
	}

	private static void delete(ReviewDAO dao) {
		// TODO Auto-generated method stub
		
	}

	private static void update(ReviewDAO dao) {
		ReviewDTO dto = dao.read(1);
		dto.setReview_content("맛없어요");
		dto.setReview_point((float)3.5);
		dto.setReview_image("aa.jpg");
		
		if(dao.update(dto)) {
			System.out.println("수정성공");
		}else {
			System.out.println("실패");
		}
		
	}

	private static void read(ReviewDAO dao) {
		ReviewDTO dto = new ReviewDTO();
				dto =dao.read(1);
		p(dto);
	}

	private static void create(ReviewDAO dao) {
		ReviewDTO dto = new ReviewDTO();
		
		dto.setFood_code("F002");
		dto.setM_id("admin");
		dto.setOrder_num(1);
		dto.setR_code("R001");
		dto.setReview_content("맛잇어요");
		dto.setReview_image("dxx.jpg");
		dto.setReview_point((float) 4.5);
		
		
		boolean flag =false;
				flag = dao.create(dto);
		if(flag) {
			System.out.println("작성완료");
		}else {
			System.out.println("실패");
		}
		
	}
	public static void p(ReviewDTO dto) {
		System.out.println(dto.getFood_code());
		System.out.println(dto.getM_id());
		System.out.println(dto.getOrder_num());
		System.out.println(dto.getR_code());
		System.out.println(dto.getReview_content());
		System.out.println(dto.getReview_date());
		System.out.println(dto.getReview_image());
		System.out.println(dto.getReview_point());
		System.out.println(dto.getReviewnum());
	
	}
}
