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

import spring.model.report.ReportDAO;
import spring.model.report.ReportDTO;
import spring.model.review.ReviewDAO;
import spring.utility.heyyo.Utility;

@Controller
public class ReportController {
	
	
	
	@Autowired
	private ReportDAO reportDAO;
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@RequestMapping(value="/report/review/delete")
	public String delete(int reviewnum, Model model, HttpServletRequest request,
							int nowPage, String oldfile) {
		
		
		
		String upDir = request.getRealPath("/review/storage");
		
		try {
			if(reviewDAO.delete(reviewnum)) {
				
				model.addAttribute("nowPage", nowPage);
				Utility.deleteFile(upDir, oldfile);
				return "redirect:/report/list";
				
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
	}
	
	
	
	
	@RequestMapping("/report/list")
	public String list(HttpServletRequest request, HttpSession session) {
		
		//검색관련 처리
	   String col = Utility.checkNull(request.getParameter("col"));
	   String word = Utility.checkNull(request.getParameter("word"));
	   
		
		//paging 관련
		int nowPage = 1;
		int recordPerPage = 5;
		
		if(request.getParameter("nowPage") != null) {
			
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		int sno = ((nowPage-1)*recordPerPage)+1;
		
		int eno = nowPage*recordPerPage;
		
		Map map = new HashMap();
		System.out.println(sno+" "+eno+" "+col+" "+word+" ");
		
		map.put("sno", sno);
		map.put("eno", eno);
		map.put("col", col);
		map.put("word", word);
		
		int totalRecord=0;
		try {
			List<ReportDTO>list = reportDAO.list(map);
			
			totalRecord = reportDAO.total(map);
			
			String paging = Utility.paging3(totalRecord, nowPage, recordPerPage, col,word);
			
			request.setAttribute("paging", paging);
			request.setAttribute("list", list);
			request.setAttribute("nowPage", nowPage);
			
			
			return "/report/list";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
		
		
		
	}
	
	
	@RequestMapping(value="/report/create", method=RequestMethod.POST)
	public String create(ReportDTO reportDTO, HttpServletRequest request,Model model,HttpSession session) {
		
		//String m_id = (String)session.getAttribute("id");
		String m_id = "admin";
		int reviewnum = Integer.parseInt(request.getParameter("reviewnum"));
		reportDTO.setReviewnum(reviewnum);
		reportDTO.setM_id(m_id);
		
		String r_code = request.getParameter("r_code");
		String nowPage = request.getParameter("nowPage");
		
		try {
			if(reportDAO.create(reportDTO)) {
				model.addAttribute("r_code", r_code);
				model.addAttribute("nowPage", nowPage);
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
	
	@RequestMapping(value="/report/create", method=RequestMethod.GET)
	public String create(int reviewnum, HttpServletRequest request) {
		
		request.setAttribute("reviewnum", reviewnum);
		
		return "/report/create";
	}
	
	@RequestMapping(value="/report/delete")
	public String delete(int reportnum, Model model,int nowPage ) {
		
		try {
			if(reportDAO.delete(reportnum)) {
				model.addAttribute("nowPage", nowPage);
				return "redirect:/report/list";
				
			}else {
				return "/error/error";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "/error/error";
		}
	}
	
	
	@RequestMapping(value="/report/read")
	public String read(int reportnum, HttpSession session, Model model,int nowPage) {
		
	
		try {
			ReportDTO reportDTO = (ReportDTO) reportDAO.read(reportnum);
			model.addAttribute("reportDTO", reportDTO);
			model.addAttribute("nowPage", nowPage);
			
			return	"/report/read";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return	"/error/error";
		}
		
				
	}
	
	
	
	
	
}
