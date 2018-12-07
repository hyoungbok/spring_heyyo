package review_reply;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import review.ReviewDTO;

public class ReviewReplyTest {

	public static void main(String[] args) {
		ReviewReplyDAO dao = new ReviewReplyDAO();
		
		//create(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		list(dao);
		//total(dao);

	}

	private static void total(ReviewReplyDAO dao) {
		// TODO Auto-generated method stub
		
	}

	private static void list(ReviewReplyDAO dao) {
		List list = dao.list()	;
		for(int i = 0; i < list.size(); i++ ) {
			ReviewReplyDTO dto = (ReviewReplyDTO) list.get(i);
			System.out.println(dto.getR_replycontent());
			System.out.println(dto.getR_replynum());
			System.out.println(dto.getReviewnum());
			
			System.out.println("mmmmmmmmmmmmmmmmmmmm");
		}
		
	}

	private static void delete(ReviewReplyDAO dao) {
		if(dao.delete(1)) {
			System.out.println("삭제성공");
		}else {
			System.out.println("실패");
		}
		
	}

	private static void update(ReviewReplyDAO dao) {
		ReviewReplyDTO dto = dao.read(1);
		dto.setR_replycontent("알앗어");
		if(dao.update(dto)) {
			System.out.println("수정성공");
		}else {
			System.out.println("실패");
		}
		
	}

	private static void read(ReviewReplyDAO dao) {
		
		ReviewReplyDTO dto = dao.read(1);
		System.out.println(dto.getR_replycontent());
		System.out.println(dto.getR_replynum());
		System.out.println(dto.getReviewnum());
		
		
	}

	private static void create(ReviewReplyDAO dao) {
		
		ReviewReplyDTO dto = new ReviewReplyDTO();
		
		dto.setR_replycontent("감사합니다");
		
		dto.setReviewnum(1);
		
		if(dao.create(dto)) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
	}
		

}
