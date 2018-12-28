package spring.sts.heyyo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
	
//	@RequestMapping(value="/order/menu", method=RequestMethod.GET)
//	public String getOrder(Model model) {
//		if(!model.containsAttribute("getOrder")) {
//			model.addAttribute("getOrder", new ArrayList<Orders>());
//				
//			}
//		return "order/createForm";
//		}
	
	
	@RequestMapping(value="/order/orderrec")
	public String orderrec(HttpSession session,HttpServletRequest request,Model model,
		String r_name,String o_address,String f_name,String o_req	) throws Exception {
		
		String m_id = "admin7";
		System.out.println(m_id);
		
		
		List orderrec = ordersdao.orderrec(m_id); 
		System.out.println(orderrec);
		
		
		model.addAttribute("orderrec", orderrec);
		
		
		
		
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
//	@RequestMapping(value="/order/menu",method=RequestMethod.POST)
//	public String menu() {
//		
//		
//		return "redirect:/order/create";
//	}
	
	
	//앞에 타입은 지워라
	@RequestMapping("/order/menu")
	public String menu(HttpSession session,Model model,HttpServletRequest request) throws Exception {
		String food_code = "1";
		String m_id = "admin7";
		System.out.println(m_id);
		System.out.println(food_code);
		List read3 = ordersdao.read3(food_code);
		System.out.println(read3);
		model.addAttribute("read3", read3);
		model.addAttribute("food_code",food_code);
		System.out.println(food_code);
		
		 
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
	
	@RequestMapping(value="/order/delete", method=RequestMethod.POST)
	public String delete(int order_num,String m_id) throws Exception{
		 
		
		try {
			mgr.update2(order_num, m_id);
			System.out.println(mgr);
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
	public String create(OrdersDTO dto, Model model,HttpServletRequest request) throws Exception {
		
		boolean flag = ordersdao.create(dto);
		System.out.println(flag);
		if(flag) {
			Map map = new HashMap();
			map.put("m_id", dto.getM_id());
			map.put("o_mileage", dto.getO_mileage());
			ordersdao.update(map);
			System.out.println(flag);
			System.out.println(map);
		
			return "/order/orderrec";
		}
		return "error/error";
	}
	
	@RequestMapping(value="/order/create",method=RequestMethod.GET)
	public String create(HttpSession session, HttpServletRequest request,Model model) throws Exception {
	
		String food_code = (String)request.getParameter("food_code");
		String f_name = (String)request.getParameter("f_name");
//		int myModaltotal = Integer.parseInt(request.getParameter("myModaltotal"));
		
		String m_id = (String)session.getAttribute("m_id");
		
		model.addAttribute("food_code",food_code);
		model.addAttribute("f_name",f_name);
//		model.addAttribute("myModaltotal", myModaltotal);
		model.addAttribute("m_id",m_id);
		
		return "/order/create";
		
	}
	
}
