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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.model.order.OrdersDAO;
import spring.model.order.OrdersDTO;
import spring.model.order.OrdersService;
import spring.utility.heyyo.Utility;

@Controller	
public class OrdersController {

	@Autowired
	private OrdersDAO ordersdao;
	
	@Autowired
	private OrdersService mgr;
	
	@RequestMapping(value="/order/orderrec",method=RequestMethod.GET)
	public String orderrec() {
		
		return "/order/orderrec";
	}
	
	
	@RequestMapping(value="/order/review",method=RequestMethod.GET)
	public String review() {
		
		return "/order/review";
	}
	
	
	@RequestMapping(value="/order/myinfo",method=RequestMethod.GET)
	public String myinfo() {
		
		return "/order/myinfo";
	}
	//앞에 타입은 지워라
	@RequestMapping(value="/order/menu",method=RequestMethod.GET)
	public String menu(HttpSession session,Model model,HttpServletRequest request) throws Exception {
		String food_code = "1";
//		String food_code = (String)request.getAttribute("food_code");
		System.out.println(food_code);
		List<HashMap> read3 = ordersdao.read3(food_code);
		System.out.println(read3);
		model.addAttribute("read3", read3);
		
		return "/order/menu";
	}
	
	@RequestMapping(value="/order/agree4",method=RequestMethod.GET)
	public String agree4() {
		
		return "/order/agree4";
	}
	
	@RequestMapping(value="/order/agree3",method=RequestMethod.GET)
	public String agree3() {
		
		return "/order/agree3";
	}
	
	@RequestMapping(value="/order/agree2",method=RequestMethod.GET)
	public String agree2() {
		
		return "/order/agree2";
	}
	
	@RequestMapping(value="/order/agree1",method=RequestMethod.GET)
	public String agree1() {
		
		return "/order/agree1";
	}
	@RequestMapping("/order/sum")
	public String sum(String r_code) throws Exception {
		ordersdao.sum(r_code);
		return "/order/sum";
	}
	
	@RequestMapping("/order/list")
	public String list(HttpServletRequest request, Model model,String m_id) throws Exception {
		String col = Utility.checkNull(request.getParameter("col"));
		String word = Utility.checkNull(request.getParameter("word"));
		
		if(col.equals("total")) word="";
		
		int nowPage = 1;
		int recordPerPage = 5;
		
		if(request.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
		}
		
		int sno = ((nowPage-1)*recordPerPage) +1;
		int eno = nowPage * recordPerPage;
		
		Map map = new HashMap();
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		
		List<OrdersDTO> list = ordersdao.list(m_id);
		
		String paging = Utility.paging3(nowPage, recordPerPage, eno, col, word);
		
		model.addAttribute("list", list);
		model.addAttribute("nowPage", nowPage);
		model.addAttribute("col", col);
		model.addAttribute("word", word);
		
		
		return "/order/list";
	}
	
	@RequestMapping(value="/order/delete", method=RequestMethod.POST)
	public String delete(int order_num,String m_id) throws Exception{
		 
		
		try {
			mgr.update2(order_num, m_id);
		
			return "redirect:/list";
		}catch(Exception e) {
			e.printStackTrace();
			return "/error/error";
		}
	
	}
	
	@RequestMapping(value="/order/delete",method=RequestMethod.GET)
	public String delete(int order_num,HttpServletRequest request) throws Exception {
		
		OrdersDTO dto = ordersdao.read(order_num);
		
		request.setAttribute("dto", dto);
		
		return "/order/delete";
	}
	
	@RequestMapping(value="/order/create",method=RequestMethod.POST)
	public String create(OrdersDTO dto, Model model) throws Exception {
		
		try {
			mgr.update(dto);
			
			model.addAttribute("dto", dto);
			
			return "/order/orderrec";
		
		}catch(Exception e) {
			e.printStackTrace();
			
			return "/error/error";
		}
		 
	} 
	
	@RequestMapping(value="/order/create",method=RequestMethod.GET)
	public String create() {
		
		return "order/createForm";
		
	}
	
}
