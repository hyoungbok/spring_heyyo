package spring.sts.heyyo;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.model.review.ReviewDAO;
import spring.model.review.ReviewDTO;
import spring.model.review_reply.ReviewReplyDAO;
import spring.model.review_reply.ReviewReplyDTO;
import spring.utility.heyyo.Utility;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Autowired
	private ReviewReplyDAO r_replyDAO;
	
	@Autowired
	private ReviewReplyDAO r_ReplyDAO;
	
	@RequestMapping("/review/rcreate")
	public String rcreate(ReviewReplyDTO r_ReplyDTO,Model model) {
	
		try {
			if(r_ReplyDAO.create(r_ReplyDTO)) {
				return "/redirect:/review/list";
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
		
	}
	
	@RequestMapping("/review/rdelete")
	public String rdelete(int r_replynum, String col, Model model, 
							int nowPage,int scroll) {
		try {
			if(r_ReplyDAO.delete(r_replynum)) {
				model.addAttribute("col", col);
				model.addAttribute("nowPage", nowPage);
				model.addAttribute("scroll", scroll);
				return "redirect:/review/list";
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "/error/error";
		}
	}
	
	@RequestMapping("/review/rupdate")
	public String rupdate(ReviewReplyDTO r_ReplyDTO,int nowPage,
						int scroll, String col, Model model) {
		try {
			if(r_ReplyDAO.update(r_ReplyDTO)) {
				model.addAttribute("col", col);
				model.addAttribute("nowPage", nowPage);
				model.addAttribute("scroll", scroll);
				return "redirect:/review/list";
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "/error/error";
		}
	}
	
	
	
	@RequestMapping("/review/list")
	public String list(HttpServletRequest request) {
		
		
		//검색관련처리
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		
		if(col.equals("total")) {
			word="";
		}
		//paging 관련
		int nowPage = 1;
		int recordPerPage = 5;
		
		if(request.getParameter("nowPage") != null) {
			
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		//int sno = ((nowPage-1)*recordPerPage)+1;
		int sno = 1;
		int eno = nowPage*recordPerPage;
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		
		int totalRecord=0;
		try {
			List<ReviewDTO>list = reviewDAO.list(map);
			
			totalRecord = reviewDAO.total(map);
			int replyTotal = r_replyDAO.total(map);
			
			String paging = Utility.reviewPaging(totalRecord, nowPage, recordPerPage, col, word);
			
			request.setAttribute("paging", paging);
			request.setAttribute("list", list);
			request.setAttribute("col", col);
			request.setAttribute("word", word);
			request.setAttribute("nowPage", nowPage);
			request.setAttribute("totalRecord", totalRecord);
			request.setAttribute("replyTotal", replyTotal);
			
			
			return "/review/list";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
		
		
		
	}
	@RequestMapping("/review/next")
	public String next(HttpServletRequest request, Model model) {
		//검색관련 처리
		   String col = Utility.checkNull(request.getParameter("col"));
		   String word = Utility.checkNull(request.getParameter("word"));
		   
		   if(col.equals("total")) word= "";
		   
		   //paging관련
		   int nowPage = 1;
		   int recordPerPage = 5;
		   
		   if(request.getParameter("nowPage")!=null){
		   	   nowPage = Integer.parseInt(request.getParameter("nowPage"))+1;
		   }
		  
		   //DB에서 가져올 레코드의 순번
		   int sno = ((nowPage-1)*recordPerPage) + 1;
		   int eno = nowPage * recordPerPage;
		   
		   Map map = new HashMap();
		   map.put("col", col);
		   map.put("word", word);
		   map.put("sno", sno);
		   map.put("eno", eno);
		   		   
		   try {
				List<ReviewDTO>list = reviewDAO.list(map);
				
				int totalRecord = reviewDAO.total(map);
				int replyTotal = r_replyDAO.total(map);
				
				String paging = Utility.reviewPaging(totalRecord, nowPage, recordPerPage, col, word);
				
				request.setAttribute("paging", paging);
				request.setAttribute("list", list);
				request.setAttribute("col", col);
				request.setAttribute("word", word);
				request.setAttribute("nowPage", nowPage);
				request.setAttribute("totalRecord", totalRecord);
				request.setAttribute("replyTotal", replyTotal);
				
				
				return "/review/nextlist";
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "/error/error";
			}
	}
	
	@RequestMapping(value="/review/create", method=RequestMethod.POST)
	public String create(ReviewDTO reviewDTO, HttpServletRequest request) {
		//리뷰이미지 업로드 관련
		String upDir = request.getRealPath("/review/storage");
		int filesize = (int)reviewDTO.getReview_imageMF().getSize();
		String review_image = "";
		if(filesize>0) {
			review_image = Utility.saveFileSpring(reviewDTO.getReview_imageMF(), upDir);
		}
		reviewDTO.setReview_image(review_image);
		
		try {
			if(reviewDAO.create(reviewDTO)) {
				
				return "redirect:/review/list";
				
				
			}else {
				return	"/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return	"/error/error";
		}
	}
	
	@RequestMapping(value="/review/create", method=RequestMethod.GET)
	public String create() {
		
		return "/review/create";
	}
	
	@RequestMapping(value="/review/delete")
	public String delete(int reviewnum, Model model, HttpServletRequest request,
							String col, String oldfile) {
		
		
		
		String upDir = request.getRealPath("/review/storage");
		
		try {
			if(reviewDAO.delete(reviewnum)) {
				
				model.addAttribute("col", col);
				Utility.deleteFile(upDir, oldfile);
				return "redirect:/review/list";
				
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
	}
	
	
	@RequestMapping(value="/review/read")
	public String read(int reviewnum, HttpSession session, Model model) {
		
	
		try {
			ReviewDTO reviewDTO = (ReviewDTO) reviewDAO.read(reviewnum);
			model.addAttribute("reviewDTO", reviewDTO);
			return	"/review/read";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return	"/error/error";
		}
		
				
	}
	
	
	
	@RequestMapping(value="/review/update", method=RequestMethod.POST)
	public String update(ReviewDTO reviewDTO, Model model) {
		
		
		
		try {
			if(reviewDAO.update(reviewDTO)) {
				model.addAttribute("id", reviewDTO.getReviewnum());
				return "redirect:/review/read";
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
	}
	@RequestMapping(value="/review/update", method=RequestMethod.GET)
	public String update(int reviewnum, HttpServletRequest request) {
		
	
		try {
			ReviewDTO reviewDTO = (ReviewDTO) reviewDAO.read(reviewnum);
			request.setAttribute("reviewDTO", reviewDTO);
			return "/review/update";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
		
		
	}
}
