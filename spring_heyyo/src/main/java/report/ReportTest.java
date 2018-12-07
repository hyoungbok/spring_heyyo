package report;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import review.ReviewDTO;

public class ReportTest {

	public static void main(String[] args) {
		ReportDAO dao = new ReportDAO();
		
		//create(dao);
		//read(dao);
		update(dao);
		//delete(dao);
		//list(dao);
		//total(dao);

	}

	private static void total(ReportDAO dao) {
		// TODO Auto-generated method stub
		
	}

	private static void list(ReportDAO dao) {
		List list = dao.list()	;
		for(int i = 0; i < list.size(); i++ ) {
			ReportDTO dto = (ReportDTO) list.get(i);
			System.out.println(dto.getReport_content());
			System.out.println(dto.getReportnum());
			System.out.println(dto.getReviewnum());
			
			System.out.println("mmmmmmmmmmmmmmmmmmmm");
		}
		
	}

	private static void delete(ReportDAO dao) {
		if(dao.delete(1)) {
			System.out.println("삭제성공");
		}else {
			System.out.println("실패");
		}
		
	}

	private static void update(ReportDAO dao) {
		ReportDTO dto = dao.read(1);
		dto.setReport_content("신고한다고");
		if(dao.update(dto)) {
			System.out.println("수정성공");
		}else {
			System.out.println("실패");
		}
		
	}

	private static void read(ReportDAO dao) {
		
		ReportDTO dto = dao.read(1);
		System.out.println(dto.getReport_content());
		System.out.println(dto.getReportnum());
		System.out.println(dto.getReviewnum());
		System.out.println(dto.getM_id());
		
		
	}

	private static void create(ReportDAO dao) {
		
		ReportDTO dto = new ReportDTO();
		
		dto.setReport_content("신고합니다");
		dto.setM_id("admin");
		dto.setReviewnum(1);
		
		if(dao.create(dto)) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
	}
		

}
